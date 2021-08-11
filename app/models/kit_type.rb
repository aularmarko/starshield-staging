# frozen_string_literal: true

class KitType < ApplicationRecord
  self.table_name = "#{connection.current_database}.kittypes"

  has_many :kits
  
  validates :kit_type, presence: true
end
