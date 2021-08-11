# frozen_string_literal: true

ActiveAdmin.register Make do
  permit_params :ak_make, :ak_make_id
  actions :create, :new, :index, :show

  filter :ak_make
  filter :ak_make_id, label: 'Ak Make id'

  index do
    id_column
    column :ak_make
    column('Ak Make Id', &:ak_make_id)
    actions
  end

  show do
    attributes_table do
      row :ak_make
      row('Ak Make id', &:ak_make_id)
    end
  end

  form do |f|
    f.inputs do
      f.input :ak_make
      f.input :ak_make_id, label: 'Ak Make id', input_html: { type: 'number' }
      f.actions
    end
  end
end
