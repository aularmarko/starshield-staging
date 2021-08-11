# frozen_string_literal: true

class AddDeviseToUsers < ActiveRecord::Migration[6.1]
  def self.up
    add_column :users, :encrypted_password, :string, null: false, default: ""

    User.find_each do |user|
      user.password = user.legacy_password
      user.save!
    rescue  ActiveRecord::RecordInvalid, ActiveRecord::RecordNotSaved => e
      Rails.logger.error("Failure while updating user: #{e.record&.errors&.full_messages}")
    end
  end

  def self.down
    # By default, we don't want to make any assumption about how to roll back a migration when your
    # model already existed. Please edit below which fields you would like to remove in this migration.
    raise ActiveRecord::IrreversibleMigration
  end
end
