class PolishFileResources < ActiveRecord::Migration[6.1]
  def change
    # Naming conventions
    rename_column :files, :akFile, :ak_file
    rename_column :files, :dwgNumber, :dwg_number
    rename_column :files, :pkFileId, :id
  end
end
