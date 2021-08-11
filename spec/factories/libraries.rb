# frozen_string_literal: true

FactoryBot.define do
  factory :library do
    library { Faker::Vehicle.make }
    description { Faker::Vehicle.standard_specs.first }
  end
end
