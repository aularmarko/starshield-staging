# frozen_string_literal: true

desc 'Remove blank spaces from part numbers in kits'

namespace :elastic do
  namespace :kits do
    task strip_part_numbers: :environment do
      Kit.find_each(batch_size: 100) do |kit|
        kit.part_number = kit.part_number.strip
        kit.save!
      rescue ActiveRecord::RecordInvalid, ActiveRecord::RecordNotSaved => e
        Rails.logger.error("Error while removing white spaces from kit #{kit.id} - Exception: #{e}")
        next
      end
    end
  end
end
