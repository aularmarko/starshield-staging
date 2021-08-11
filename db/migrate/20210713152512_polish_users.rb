class PolishUsers < ActiveRecord::Migration[6.1]
  def change
    # Type corrections
    current_admin_ids = User.where(admin: %w[Y 1]).map(&:pkUserId)
    current_skip_vin_ids = User.where(skipVIN: 'Y').map(&:pkUserId)
    User.update_all(admin: '0', skipVIN: '0')
    change_column :users, :admin, :boolean, default: false
    change_column :users, :skipVIN, :boolean, default: false

    current_admin_ids.each do |id|
      user = User.find(id)
      user.update!(admin: true)
    rescue  ActiveRecord::RecordInvalid, ActiveRecord::RecordNotSaved, ActiveRecord::RecordNotFound => e
      Rails.logger.error("Failure while updating user: #{e.record&.errors&.full_messages}")
    end
    current_skip_vin_ids.each do |id|
      user = User.find(id)
      user.update!(skipVIN: true)
    rescue  ActiveRecord::RecordInvalid, ActiveRecord::RecordNotSaved, ActiveRecord::RecordNotFound => e
      Rails.logger.error("Failure while updating user: #{e.record&.errors&.full_messages}")
    end

    User.find_by(username: 'jose').update_columns(super_admin: true, kits_admin: true)
    User.find_by(username: 'irod').update_column(:kits_admin, true)

    # Naming conventions
    rename_column :users, :pkUserId, :id
    rename_column :users, :dongleNumber, :dongle_number
    rename_column :users, :firstName, :first_name
    rename_column :users, :lastName, :last_name
    rename_column :users, :companyName, :company_name
    rename_column :users, :phoneNumber, :phone_number
    rename_column :users, :faxNumber, :fax_number
    rename_column :users, :dateCreated, :created_at
    rename_column :users, :skipVIN, :skip_vin
    rename_column :users, :fkLibId, :library_id
  end
end
