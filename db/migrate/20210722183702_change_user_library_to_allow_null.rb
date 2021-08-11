class ChangeUserLibraryToAllowNull < ActiveRecord::Migration[6.1]
  def change
    change_column_null :users, :library_id, true
  end
end
