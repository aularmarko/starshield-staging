# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Kit, type: :model do
  describe 'validations' do
    context 'Kit' do
      let!(:kit_type) { build(:kit_type) }
      let!(:model) { build(:model) }
      let!(:file_resource) { build(:file_resource) }
      let!(:library) { build(:library) }
      let(:kit) { build :kit, kit_type: kit_type, model: model, file_resource: file_resource, library: library }

      it 'passes validation when attributes are valid' do
        expect(kit).to be_valid
      end

      it 'fails when part_number is empty' do
        kit.part_number = nil
        expect(kit).not_to be_valid
      end

      it 'fails when file is empty' do
        kit.file_resource = nil
        expect(kit).not_to be_valid
      end

      it 'fails when model is empty' do
        kit.model = nil
        expect(kit).not_to be_valid
      end

      it 'fails when end_year and start_year are empty' do
        kit.end_year = nil
        kit.start_year = nil
        expect(kit).not_to be_valid
      end

      it 'fails when start_year is greater than end_year' do
        kit.start_year = rand(3000)
        kit.end_year = kit.start_year - rand(10)
        expect(kit).not_to be_valid
      end
    end
  end
end
