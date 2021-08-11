class RemoveFilesUnusedColumns < ActiveRecord::Migration[6.1]
  def change
    remove_column :files, :materialsize
    remove_column :files, :maskedBy
    remove_column :files, :digitizedBy
    remove_column :files, :validatedBy
    remove_column :files, :note
  end
end
