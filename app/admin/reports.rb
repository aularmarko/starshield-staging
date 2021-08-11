# frozen_string_literal: true

ActiveAdmin.register History, as: 'Reports' do
  permit_params :vin, :scrap, :status
  actions :index, :show, :edit, :update

  filter :date
  filter :user
  filter :vin

  index do
    id_column
    column :date
    column :user
    column :vin
    column :scrap
    column :status
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
