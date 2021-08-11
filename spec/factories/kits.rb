# frozen_string_literal: true

FactoryBot.define do
  factory :kit do
    file_resource { create :file_resource }
    kit_type { create :kit_type }
    model { create :model }
    library { create :library }
    start_year { Date.today.year }
    end_year { (Date.today + 1.year).year }
    trim { Faker::Vehicle.transmission }
    trim_description { Faker::Vehicle.drive_type }
    notes { Faker::Vehicle.car_type }
    part_number { Faker::Code.nric }
    view { Faker::Boolean.boolean }
  end
end
