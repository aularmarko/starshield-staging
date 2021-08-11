# frozen_string_literal: true

FactoryBot.define do
  factory :file_resource do
    ak_file { Faker::File.file_name(dir: '', ext: 'STR')[1..] }
    dwg_number { Faker::Code.nric }
  end
end
