# frozen_string_literal: true

class History < ApplicationRecord
  self.table_name = "#{connection.current_database}.history"

  enum status: {
    failed: 'failed',
    downloaded: 'downloaded',
    cutting: 'cutting',
    complete: 'complete'
  }

  belongs_to :kit, required: false
  belongs_to :user
end
