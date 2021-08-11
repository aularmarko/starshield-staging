class RemoveUsersUnusedColumns < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, '3mCost'
    remove_column :users, :averyCost
    remove_column :users, :localTax
  end
end
