# frozen_string_literal: true

ActiveAdmin.register User do
  config.sort_order = 'id_asc'
  actions :all
  permit_params :username,
                :email,
                :first_name,
                :last_name,
                :company_name,
                :address,
                :city,
                :address,
                :state,
                :zip,
                :phone_number,
                :fax_number,
                :admin,
                :super_admin,
                :kits_admin,
                :password,
                :library_id

  index do
    id_column
    column :username
    column :email
    column :company_name
    column :dongle_number
    column :admin
    column :kits_admin
    column :super_admin
    actions
  end

  filter :email
  filter :username

  form do |f|
    f.inputs do
      f.input :username
      f.input :password
      f.input :dongle_number
      f.input :email
      f.input :first_name
      f.input :last_name
      f.input :company_name
      f.input :address
      f.input :city
      f.input :state
      f.input :zip
      f.input :phone_number
      f.input :fax_number
      f.input :admin, input_html: { id: 'adminCheckbox' }
      f.input :kits_admin, input_html: { id: 'kitAdminCheckbox' }
      f.input :super_admin, input_html: { id: 'superAdminCheckbox' }
      f.input :library_id, as: :select, collection: Library.all.map { |l| [l.library, l.id] }
    end
    f.actions
  end

  show do
    attributes_table do
      rows :username,
           :dongle_number,
           :email,
           :first_name,
           :last_name,
           :company_name,
           :address,
           :city,
           :state,
           :zip,
           :phone_number,
           :fax_number,
           :admin,
           :kits_admin,
           :super_admin
      row :library do |user|
        user&.library&.library
      end
    end
  end

  controller do
    def update
      params[:user].delete('password') if params[:user][:password].blank?
      super do |format|
        if params[:user][:super_admin].eql?('0') && params[:user][:username].eql?(current_user.username)
          format.html { redirect_to admin_dashboard_path }
        end
      end
    end
  end
end
