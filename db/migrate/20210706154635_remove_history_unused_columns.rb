class RemoveHistoryUnusedColumns < ActiveRecord::Migration[6.1]
  def change
    # Was set to ZERO_DATE which is deprecated and no longer supported unless MYSQL is set to NO_STRICT which also
    # removes other checks
    change_column :history, :date, :datetime, default: nil

    remove_column :history, :kitCost
    remove_column :history, :sssCost
  end
end
