# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Make, type: :model do
  describe 'validations' do
    context 'Make' do
      let(:make) { build(:make) }

      it 'passes validation when attributes are valid' do
        expect(make).to be_valid
      end

      it 'fails when ak_make_id is empty' do
        make.ak_make_id = nil
        expect(make).not_to be_valid
      end
    end
  end
end
