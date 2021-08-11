class PolishKitTypes < ActiveRecord::Migration[6.1]
  def change
    # Naming conventions
    rename_column :kittypes, :Id, :id
    rename_column :kittypes, :akType, :ak_type
    rename_column :kittypes, :kitType, :kit_type
  end
end
