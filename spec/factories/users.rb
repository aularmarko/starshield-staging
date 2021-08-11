# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    username { Faker::Internet.unique.username }
    password { Faker::Internet.password(min_length: 8) }
    email { Faker::Internet.unique.email }
    dongle_number { Faker::Number.number(digits: 10) }
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    company_name { Faker::Company.name }
    address { Faker::Address.street_address }
    city { Faker::Address.city }
    state { Faker::Address.state }
    zip { Faker::Address.zip_code }
    phone_number { Faker::PhoneNumber.cell_phone }
    fax_number { Faker::PhoneNumber.phone_number }
    admin { false }
    skip_vin { Faker::Boolean.boolean }
    library_id { 1 }
    super_admin { false }
  end

  factory :admin, parent: :user do
    admin { true }
  end

  factory :kits_admin, parent: :admin do
    kits_admin { true }
  end

  factory :super_admin, parent: :kits_admin do
    super_admin { true }
  end
end
