class PolishLibraries < ActiveRecord::Migration[6.1]
  def change
    # Naming conventions
    rename_column :libraries, :pkLibId, :id
  end
end
