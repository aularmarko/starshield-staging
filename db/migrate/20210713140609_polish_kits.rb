class PolishKits < ActiveRecord::Migration[6.1]
  def change
    # Naming conventions
    rename_column :kits, :pkKitId, :id
    rename_column :kits, :startYear, :start_year
    rename_column :kits, :endYear, :end_year
    rename_column :kits, :trimDescription, :trim_description
    rename_column :kits, :partNumber, :part_number
    rename_column :kits, :libId, :library_id
    rename_column :kits, :fkFileId, :file_resource_id
    rename_column :kits, :fkModelId, :model_id
    rename_column :kits, :type, :kit_type_id

    # Type corrections
    change_column :kits, :view, :boolean
    change_column :kits, :file_resource_id, :integer, default: nil
    change_column :kits, :kit_type_id, :integer, default: nil
  end
end
