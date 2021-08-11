# frozen_string_literal: true

FactoryBot.define do
  factory :kit_type do
    ak_type { Faker::Alphanumeric.alpha(number: 1) }
    kit_type { %w[Bumper Screen Face Back].sample }
  end
end
