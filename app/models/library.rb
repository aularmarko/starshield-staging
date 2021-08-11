# frozen_string_literal: true

class Library < ApplicationRecord
  has_many :users

  validates :library, presence: true
end
