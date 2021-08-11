# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Library, type: :model do
  describe 'validations' do
    context 'Library' do
      let(:library) { build(:library) }

      it 'passes validation when attributes are valid' do
        expect(library).to be_valid
      end

      it 'fails when library is empty' do
        library.library = nil
        expect(library).not_to be_valid
      end
    end
  end
end
