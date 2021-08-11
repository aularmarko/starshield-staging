# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'validations' do
    context 'User' do
      let(:user) { build(:user) }
      it 'passes validation when attributes are valid' do
        expect(user).to be_valid
      end
    end
    context 'Admin' do
      let(:admin) { build(:admin) }
      it 'passes validation when attributes are valid' do
        expect(admin).to be_valid
      end
    end
    context 'Kits Admin' do
      let(:kits_admin) { build(:kits_admin) }
      it 'passes validation when attributes are valid' do
        expect(kits_admin).to be_valid
      end
    end
    context 'Super Admin' do
      let(:super_admin) { build(:super_admin) }
      it 'passes validation when attributes are valid' do
        expect(super_admin).to be_valid
      end
    end
  end
end
