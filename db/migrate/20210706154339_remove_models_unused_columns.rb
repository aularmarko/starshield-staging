class RemoveModelsUnusedColumns < ActiveRecord::Migration[6.1]
  def change
    remove_column :models, :akModelId
    remove_column :models, :vinCode
    remove_column :models, :bodyType
    remove_column :models, :vehicleType
  end
end
