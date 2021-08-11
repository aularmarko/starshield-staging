class PolishHistories < ActiveRecord::Migration[6.1]
  def change
    # Naming conventions
    rename_column :history, :fkKitId, :kit_id
    rename_column :history, :oemId, :vin
    rename_column :history, :fkUserId, :user_id

    # Type corrections
    current_scrap_ids = History.where(scrap: 'Y').map(&:Id)
    History.update_all(scrap: '0')

    change_column :history, :scrap, :boolean, default: false
    current_scrap_ids.each do |id|
      history = History.find(id)
      history.update!(scrap: true)
    rescue  ActiveRecord::RecordInvalid, ActiveRecord::RecordNotSaved, ActiveRecord::RecordNotFound => e
      Rails.logger.error("Failure while updating history: #{e.record&.errors&.full_messages}")
    end

    # Naming conventions
    rename_column :history, :Id, :id
  end
end
