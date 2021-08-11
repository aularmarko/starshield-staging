class PolishModels < ActiveRecord::Migration[6.1]
  def change
    # Naming conventions
    rename_column :models, :pkModelId, :id
    rename_column :models, :fkMakeId, :make_id
    rename_column :models, :akModel, :ak_model
  end
end
