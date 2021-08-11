class AddKitadminFlagToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :kits_admin, :boolean, default: false
  end
end
