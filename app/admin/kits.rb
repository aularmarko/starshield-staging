# frozen_string_literal: true

ActiveAdmin.register Kit do
  permit_params :file_resource_id,
                :kit_type_id,
                :model_id,
                :start_year,
                :end_year,
                :trim,
                :trim_description,
                :notes,
                :part_number,
                :library_id,
                :view

  filter :model_id, as: :select, collection: -> { Model.all.map { |model| [model.ak_model, model.id] } }
  filter :model_make_id, as: :select, collection: -> { Make.all.map { |make| [make.ak_make, make.id] } }
  filter :view, label: 'Status'

  index do
    id_column
    column(:year) { |kit| "#{kit&.start_year} - #{kit&.end_year}" }
    column(:make) { |kit| link_to(kit&.model&.make&.ak_make, admin_make_path(kit&.model&.make&.id)) }
    column(:model) { |kit| link_to(kit&.model&.ak_model, admin_model_path(kit&.model&.id)) }
    column :trim
    column(:type) { |kit| kit&.kit_type&.kit_type }
    toggle_bool_column 'Status', :view
    actions
  end

  show do
    attributes_table do
      row(:library) { |kit| kit&.library&.library }
      rows :start_year,
           :end_year
      row(:model) { |kit| kit&.model&.ak_model }
      row(:make) { |kit| link_to(kit&.model&.make&.ak_make, admin_make_path(kit&.model&.make&.id)) }
      rows :trim,
           :trim_description,
           :part_number
      row(:kit_type) { |kit| kit&.kit_type&.kit_type }
      row(:file_resource) { |kit| link_to kit&.file_resource&.ak_file, kit.file_resource&.download_link }
      rows :notes,
           :view
    end
  end

  form do |f|
    f.inputs do
      f.input :library_id, as: :select, collection: Library.all.map { |lib| [lib.library, lib.id] }
      f.input :start_year
      f.input :end_year
      # rubocop:disable Naming/VariableNumber
      f.input :model_id, as: :nested_select,
                         level_1: {
                           attribute: :make_id,
                           display_name: :ak_make,
                           collection: Make.all
                         },
                         level_2: {
                           attribute: :model_id,
                           display_name: :ak_model,
                           collection: Model.all
                         }
      # rubocop:enable Naming/VariableNumber
      f.input :trim
      f.input :trim_description
      f.input :part_number
      f.input :kit_type_id, as: :select, collection: KitType.all.map { |type| [type.kit_type, type.id] }
      f.inputs 'File' do
        f.input 'File', as: :file
        unless f.object.new_record?
          div class: 'file-container' do
            h5 'Existing File'
            if kit.file_resource
              a kit.file_resource&.ak_file, href: kit.file_resource&.download_link
            else
              h5 class: 'empty-file' do
                'EMPTY'
              end
            end
          end
        end
      end
      f.input :notes
      f.input :view
      f.actions
    end
  end

  controller do
    # rubocop:disable Metrics/AbcSize, Metrics/MethodLength
    def create
      file_attrs = params[:kit][:File]
      create_file(file_attrs)
      if @file.valid?
        @file.save
        @kit = Kit.new(
          library_id: params[:kit][:library_id],
          start_year: params[:kit][:start_year],
          end_year: params[:kit][:end_year],
          model_id: params[:kit][:model_id],
          trim: params[:kit][:trim],
          trim_description: params[:kit][:trim_description],
          kit_type_id: params[:kit][:kit_type_id],
          notes: params[:kit][:notes],
          view: params[:kit][:view],
          part_number: params[:kit][:part_number],
          file_resource_id: @file.id
        )
        if @kit.valid?
          @kit.save
          Aws::StarshieldS3Bucket.instance.upload_file(file_attrs)
          redirect_to admin_kit_path(@kit.id)
        else
          @file.delete
        end
      else
        redirect_to new_admin_kit_path, flash: { error: @file.errors.full_messages }
      end
    end

    def update
      file_attrs = params[:kit][:File]
      if file_attrs && !FileResource.find_by(ak_file: file_attrs.original_filename)
        old_file = Kit.find(params[:id])&.file_resource
        Aws::StarshieldS3Bucket.instance.delete_file(old_file.ak_file) if old_file
        old_file&.delete
        create_file(file_attrs)
        if @file.valid?
          @file.save
          Kit.find(params[:id]).update!(file_resource_id: @file.id)
          Aws::StarshieldS3Bucket.instance.upload_file(file_attrs)
          redirect_to admin_kit_path(params[:id])
        else
          redirect_to edit_admin_kit_path(params[:id]), flash: { error: @file.errors.full_messages }
        end
      else
        super
      end
    end
    # rubocop:enable Metrics/AbcSize, Metrics/MethodLength

    def create_file(file_attrs)
      @file = FileResource.new
      @file[:ak_file] = file_attrs&.original_filename
      @file[:dwg_number] = params[:kit][:part_number]
    end

    def destroy
      old_file = Kit.find(params[:id])&.file_resource
      Aws::StarshieldS3Bucket.instance.delete_file(old_file.ak_file) if old_file
      old_file&.delete
      super
    end
  end
end
