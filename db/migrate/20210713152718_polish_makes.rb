class PolishMakes < ActiveRecord::Migration[6.1]
  def change
    # Naming conventions
    rename_column :makes, :akMake, :ak_make
    rename_column :makes, :pkMakeId, :id
    rename_column :makes, :akMakeId, :ak_make_id
  end
end
