# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Model, type: :model do
  describe 'validations' do
    context 'Model' do
      let!(:make) { build(:make) }
      let(:model) { build :model, make: make }

      it 'passes validation when attributes are valid' do
        expect(model).to be_valid
      end

      it 'fails when ak_model is empty' do
        model.ak_model = nil
        expect(model).not_to be_valid
      end
    end
  end
end
