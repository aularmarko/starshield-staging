# frozen_string_literal: true

class Kit < ApplicationRecord
  self.inheritance_column = :_type_disabled

  belongs_to :kit_type
  belongs_to :file_resource
  belongs_to :model
  belongs_to :library
  has_many :histories

  validates :start_year, :part_number, presence: true
  validates :end_year, presence: true, numericality: { greater_than: :start_year }
end
