# frozen_string_literal: true

require 'rails_helper'
require 'cancan/matchers'

RSpec.describe User, type: :model do
  describe 'Ability' do
    let(:user) { create(:user) }
    let(:admin) { create(:admin) }
    let(:super_admin) { create(:super_admin) }
    let(:kits_admin) { create(:kits_admin) }
    let(:user2) { create(:user) }
    let(:kit_type) { create(:kit_type) }
    let(:make) { create(:make) }
    let(:model) { create :model, make: make }
    let(:file_resource) { create(:file_resource) }
    let(:library) { create(:library) }
    let(:kit) { create :kit, kit_type: kit_type, model: model, file_resource: file_resource, library: library }

    context 'Normal user' do
      subject(:ability) { Ability.new(user) }

      it 'not be able to read users' do
        expect(ability).not_to be_able_to(:read, user2)
      end
      it 'not be able to edit users' do
        expect(ability).not_to be_able_to(:edit, user2)
      end
      it 'not be able to update users' do
        expect(ability).not_to be_able_to(:update, user2)
      end
      it 'not be able to destroy users' do
        expect(ability).not_to be_able_to(:destroy, user2)
      end
      it 'not be able to create users' do
        expect(ability).not_to be_able_to(:create, user2)
      end
      it 'not be able to manage kits' do
        expect(ability).not_to be_able_to(:manage, kit)
      end
      it 'not be able to read makes' do
        expect(ability).not_to be_able_to(:read, make)
      end
      it 'not be able to create makes' do
        expect(ability).not_to be_able_to(:create, make)
      end
    end

    context 'Admin user' do
      subject(:ability) { Ability.new(admin) }

      it 'not be able to read users' do
        expect(ability).not_to be_able_to(:read, user2)
      end
      it 'not be able to edit users' do
        expect(ability).not_to be_able_to(:edit, user2)
      end
      it 'not be able to update users' do
        expect(ability).not_to be_able_to(:update, user2)
      end
      it 'not be able to destroy users' do
        expect(ability).not_to be_able_to(:destroy, user2)
      end
      it 'not be able to create users' do
        expect(ability).not_to be_able_to(:create, user2)
      end
      it 'not be able to manage kits' do
        expect(ability).not_to be_able_to(:manage, kit)
      end
      it 'not be able to read makes' do
        expect(ability).not_to be_able_to(:read, make)
      end
      it 'not be able to create makes' do
        expect(ability).not_to be_able_to(:create, make)
      end
      it 'not be able to edit makes' do
        expect(ability).not_to be_able_to(:edit, make)
      end
      it 'not be able to update makes' do
        expect(ability).not_to be_able_to(:update, make)
      end
      it 'not be able to destroy makes' do
        expect(ability).not_to be_able_to(:destroy, make)
      end
    end

    context 'Kits admin user' do
      subject(:ability) { Ability.new(kits_admin) }

      it 'not be able to read users' do
        expect(ability).not_to be_able_to(:read, user2)
      end
      it 'not be able to edit users' do
        expect(ability).not_to be_able_to(:edit, user2)
      end
      it 'not be able to update users' do
        expect(ability).not_to be_able_to(:update, user2)
      end
      it 'not be able to destroy users' do
        expect(ability).not_to be_able_to(:destroy, user2)
      end
      it 'not be able to create users' do
        expect(ability).not_to be_able_to(:create, user2)
      end
      it 'able to manage kits' do
        expect(ability).to be_able_to(:manage, kit)
      end
      it 'able to read makes' do
        expect(ability).to be_able_to(:read, make)
      end
      it 'able to create makes' do
        expect(ability).to be_able_to(:create, make)
      end
      it 'not be able to edit makes' do
        expect(ability).not_to be_able_to(:edit, make)
      end
      it 'not be able to update makes' do
        expect(ability).not_to be_able_to(:update, make)
      end
      it 'not be able to destroy makes' do
        expect(ability).not_to be_able_to(:destroy, make)
      end
    end

    context 'SuperAdmin user' do
      subject(:ability) { Ability.new(super_admin) }
      it 'able to manage users' do
        expect(ability).to be_able_to(:manage, user2)
      end
      it 'able to manage kits' do
        expect(ability).to be_able_to(:manage, kit)
      end
      it 'able to read makes' do
        expect(ability).to be_able_to(:read, make)
      end
      it 'able to create makes' do
        expect(ability).to be_able_to(:create, make)
      end
      it 'not be able to edit makes' do
        expect(ability).not_to be_able_to(:edit, make)
      end
      it 'not be able to update makes' do
        expect(ability).not_to be_able_to(:update, make)
      end
      it 'not be able to destroy makes' do
        expect(ability).not_to be_able_to(:destroy, make)
      end
    end
  end
end
