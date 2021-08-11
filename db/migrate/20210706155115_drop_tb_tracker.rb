class DropTbTracker < ActiveRecord::Migration[6.1]
  def change
    drop_table :tbtracker
  end
end
