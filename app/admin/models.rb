# frozen_string_literal: true

ActiveAdmin.register Model do
  permit_params :ak_model, :make_id
  actions :create, :new, :edit, :update, :index, :show

  filter :make_id, as: :select, collection: -> { Make.all.map { |make| [make.ak_make, make.id] } }

  index do
    id_column
    column :ak_model
    column 'Make' do |model|
      make = model.make
      link_to(make&.ak_make, admin_make_path(make&.id))
    end
    actions
  end

  show do
    attributes_table do
      row :ak_model
      row 'Make' do |model|
        link_to(model.make&.ak_make, admin_make_path(model.make&.id))
      end
    end
  end

  form do |f|
    f.inputs do
      f.input :ak_model
      f.input :make_id, as: :select, collection: Make.all.map { |make| [make.ak_make, make.id] }
      f.actions
    end
  end
end
