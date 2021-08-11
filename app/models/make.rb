# frozen_string_literal: true

class Make < ApplicationRecord
  has_many :models

  validates :ak_make_id, :ak_make, presence: true
end
