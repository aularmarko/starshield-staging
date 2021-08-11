class RemoveKitsUnusedColumns < ActiveRecord::Migration[6.1]
  def change
    remove_column :kits, :helpLink
    remove_column :kits, :difficulty
    remove_column :kits, :image
    remove_column :kits, :retailPrice
    remove_column :kits, :ssaCost
  end
end
