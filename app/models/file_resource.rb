# frozen_string_literal: true

class FileResource < ApplicationRecord
  self.table_name = "#{connection.current_database}.files"

  has_one :kit

  validates :ak_file, presence: true, uniqueness: true

  def download_link
    Aws::StarshieldS3Bucket.instance.download_link(ak_file)
  end
end
