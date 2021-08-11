# frozen_string_literal: true

FactoryBot.define do
  factory :model do
    make { create :make }
    ak_model { Faker::Vehicle.model }
  end
end
