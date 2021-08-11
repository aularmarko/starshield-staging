# frozen_string_literal: true

ActiveAdmin.register History, as: 'Reports' do
  permit_params :vin, :scrap, :status
  actions :index, :show, :edit, :update

  filter :date
  filter :status, as: :select, collection: proc { History.statuses }
  filter :user_library_id, as: :select, collection: -> { Library.all.map { |library| [library.library, library.id] } }, label: 'Library'
  filter :kit_model_id, as: :select, collection: -> { Model.all.map { |model| [model.ak_model, model.id] } }, label: 'Model'
  filter :user

  index do
    div do
      columns do
        column do
          table do
            thead do
              tr do
                th 'Complete Kits'
                th 'Scrapped Kits'
                th 'Total Kits Cut'
              end
            end
            tbody do
              tr do
                total_kits = History.where(status: 'complete').ransack(params[:q]).result.count
                scrapped_kits = History.where(scrap: true).ransack(params[:q]).result.count
                td total_kits - scrapped_kits
                td scrapped_kits
                td total_kits
              end
            end
          end
        end
      end
    end
    id_column
    column('Date & Time', &:date)
    column :user
    column(:year) { |report| "#{report.kit&.start_year} - #{report.kit&.end_year}" }
    column(:make) { |report| link_to(report.kit&.model&.make&.ak_make, admin_make_path(report.kit&.model&.make&.id)) }
    column(:model) { |report| link_to(report.kit&.model&.ak_model, admin_model_path(report.kit&.model&.id)) }
    column(:part_number) { |report| report.kit&.part_number }
    column :vin, sortable: false
    column :scrap, sortable: false
    tag_column :status, sortable: false
    actions
  end

  show do
    attributes_table do
      rows :id,
           :date,
           :user,
           :vin,
           :scrap,
           :status

      row :kit do |history|
        link_to(history&.kit&.trim_description, admin_kit_path(history&.kit&.id))
      end
    end
  end

  form do |f|
    f.inputs do
      f.input :vin
      f.input :scrap
      f.input :status, as: :select, collection: History.statuses.keys
    end
    f.actions
  end
end
