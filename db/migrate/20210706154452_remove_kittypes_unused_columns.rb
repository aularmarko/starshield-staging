class RemoveKittypesUnusedColumns < ActiveRecord::Migration[6.1]
  def change
    remove_column :kittypes, :basePrice
  end
end
