# frozen_string_literal: true

require 'rails_helper'

RSpec.describe FileResource, type: :model do
  describe 'validations' do
    context 'File Resource' do
      let(:file_resource) { build(:file_resource) }
      it 'passes validation when attributes are valid' do
        expect(file_resource).to be_valid
      end

      it 'fails when ak_kile is nil' do
        file_resource.ak_file = nil
        expect(file_resource).not_to be_valid
      end
    end
  end
end
