class RenamePasswordToLegacy < ActiveRecord::Migration[6.1]
  def change
    rename_column :users, :password, :legacy_password
  end
end
