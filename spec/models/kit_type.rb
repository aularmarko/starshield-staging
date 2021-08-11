# frozen_string_literal: true

require 'rails_helper'

RSpec.describe KitType, type: :model do
  describe 'validations' do
    context 'Kit Type' do
      let(:kit_type) { build(:kit_type) }
      it 'passes validation when attributes are valid' do
        expect(kit_type).to be_valid
      end

      it 'fails when kit_type is empty' do
        kit_type.kit_type = nil
        expect(kit_type).not_to be_valid
      end
    end
  end
end
