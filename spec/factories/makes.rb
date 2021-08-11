# frozen_string_literal: true

FactoryBot.define do
  factory :make do
    ak_make { Faker::Alphanumeric.alpha(number: 10) }
    ak_make_id { Faker::Number.number(digits: 1) }
  end
end
