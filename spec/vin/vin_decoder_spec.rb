# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Vin::VinDecoder do
  describe 'decode' do
    context 'search by part numbers' do
      let!(:kits) do
        %w[ZAW-061-193-DB-DSP ZAW-061-193-AC-DSP FB-17301-A FB-17301-B].collect do |part_number|
          create :kit, part_number: part_number
        end
      end
      let(:vin_decoder) { Vin::StubbedVinDecoder.new(nil, vin, associations) }
      let(:vin) { 'WAU8ZZ44KLA000739' }
      let(:associations) do
        [
          # Should match
          {
            vin_rules: [
              { position: 0, possible_characters: %w[W], equal: true },
              { position: 1, possible_characters: %w[A], equal: true },
              { position: 2, possible_characters: %w[1 U], equal: true },
              { position: 3, possible_characters: %w[7 8 9], equal: true },
              { position: 4, possible_characters: %w[2], equal: false },
              { position: 7, possible_characters: %w[4 2], equal: true },
              { position: 9, possible_characters: %w[H J K L M], equal: true }
            ],
            kit_ids: [],
            part_numbers: %w[ZAW-061-193-DB-DSP ZAW-061-193-AC-DSP]
          },
          # Should not match
          {
            vin_rules: [
              { position: 0, possible_characters: %w[W], equal: true },
              { position: 1, possible_characters: %w[A], equal: true },
              { position: 2, possible_characters: %w[U], equal: true },
              { position: 3, possible_characters: %w[A G H B J F K 6 5 4 7 Y W], equal: true },
              { position: 7, possible_characters: %w[F], equal: true },
              { position: 9, possible_characters: %w[H J K], equal: true }
            ],
            kit_ids: [],
            part_numbers: %w[FB-17301-A FB-17301-B]
          }
        ]
      end
      let(:matching_part_numbers) { %w[ZAW-061-193-DB-DSP ZAW-061-193-AC-DSP] }

      it 'returns only the two kits that match' do
        kits = vin_decoder.decode
        expect(kits.count).to eq(matching_part_numbers.count)
      end

      it 'returns only kits with proper part numbers' do
        kits = vin_decoder.decode
        kits.each do |kit|
          expect(matching_part_numbers).to include(kit.part_number)
        end
      end
    end

    context 'search by kit id' do
      let!(:kits) do
        [13, 22, 98, 6, 141].collect do |id|
          create :kit, id: id
        end
      end
      let(:vin_decoder) { Vin::StubbedVinDecoder.new(nil, vin, associations) }
      let(:vin) { 'WAUKZZ4FKHA000739' }
      let(:associations) do
        [
          # Should not match
          {
            vin_rules: [
              { position: 0, possible_characters: %w[W], equal: true },
              { position: 1, possible_characters: %w[A], equal: true },
              { position: 2, possible_characters: %w[1 U], equal: true },
              { position: 3, possible_characters: %w[7 8 9], equal: true },
              { position: 4, possible_characters: %w[2], equal: false },
              { position: 7, possible_characters: %w[4 2], equal: true },
              { position: 9, possible_characters: %w[H J K L M], equal: true }
            ],
            kit_ids: [22, 6],
            part_numbers: []
          },
          # Should match
          {
            vin_rules: [
              { position: 0, possible_characters: %w[W], equal: true },
              { position: 1, possible_characters: %w[A], equal: true },
              { position: 2, possible_characters: %w[U], equal: true },
              { position: 3, possible_characters: %w[A G H B J F K 6 5 4 7 Y W], equal: true },
              { position: 7, possible_characters: %w[F], equal: true },
              { position: 9, possible_characters: %w[H J K], equal: true }
            ],
            kit_ids: [13, 98, 141],
            part_numbers: []
          }
        ]
      end
      let(:matching_ids) { [13, 98, 141] }

      it 'returns only the three kits that match' do
        kits = vin_decoder.decode
        expect(kits.count).to eq(matching_ids.count)
      end

      it 'returns only kits with proper ids' do
        kits = vin_decoder.decode
        kits.each do |kit|
          expect(matching_ids).to include(kit.id)
        end
      end
    end

    context 'with user restrictions' do
      let!(:kits) do
        [13, 22, 98, 6, 141].collect do |id|
          create :kit, id: id
        end
      end
      let!(:current_user) { User.find_by(id: 50) || (create :user, id: 50) }
      let(:vin_decoder) { Vin::StubbedVinDecoder.new(current_user, vin, associations) }
      let(:vin) { 'WAU8ZZ44KLA000739' }
      let(:associations) {}

      context 'user matches rules' do
        # Same rules, one with user restriction an the other without
        let(:associations) do
          [
            # Should match
            {
              vin_rules: [
                { position: 0, possible_characters: %w[W], equal: true },
                { position: 1, possible_characters: %w[A], equal: true },
                { position: 2, possible_characters: %w[1 U], equal: true },
                { position: 3, possible_characters: %w[7 8 9], equal: true },
                { position: 4, possible_characters: %w[2], equal: false },
                { position: 7, possible_characters: %w[4 2], equal: true },
                { position: 9, possible_characters: %w[H J K L M], equal: true }
              ],
              user_rules: [
                64,
                50,
                99
              ],
              kit_ids: [22, 6],
              part_numbers: []
            },
            # Should not match
            {
              vin_rules: [
                { position: 0, possible_characters: %w[W], equal: true },
                { position: 1, possible_characters: %w[A], equal: true },
                { position: 2, possible_characters: %w[1 U], equal: true },
                { position: 3, possible_characters: %w[7 8 9], equal: true },
                { position: 4, possible_characters: %w[2], equal: false },
                { position: 7, possible_characters: %w[4 2], equal: true },
                { position: 9, possible_characters: %w[H J K L M], equal: true }
              ],
              kit_ids: [13, 98, 141],
              part_numbers: []
            }
          ]
        end
        let(:matching_ids) { [22, 6] }

        it 'returns only the two kits that match' do
          kits = vin_decoder.decode
          expect(kits.count).to eq(matching_ids.count)
        end

        it 'returns only kits with proper ids' do
          kits = vin_decoder.decode
          kits.each do |kit|
            expect(matching_ids).to include(kit.id)
          end
        end
      end

      context 'user does not match the rules' do
        # Same rules, one with user restriction an the other without
        let(:associations) do
          [
            # Should not match
            {
              vin_rules: [
                { position: 0, possible_characters: %w[W], equal: true },
                { position: 1, possible_characters: %w[A], equal: true },
                { position: 2, possible_characters: %w[1 U], equal: true },
                { position: 3, possible_characters: %w[7 8 9], equal: true },
                { position: 4, possible_characters: %w[2], equal: false },
                { position: 7, possible_characters: %w[4 2], equal: true },
                { position: 9, possible_characters: %w[H J K L M], equal: true }
              ],
              user_rules: [
                64,
                22,
                99
              ],
              kit_ids: [22, 6],
              part_numbers: []
            },
            # Should match
            {
              vin_rules: [
                { position: 0, possible_characters: %w[W], equal: true },
                { position: 1, possible_characters: %w[A], equal: true },
                { position: 2, possible_characters: %w[1 U], equal: true },
                { position: 3, possible_characters: %w[7 8 9], equal: true },
                { position: 4, possible_characters: %w[2], equal: false },
                { position: 7, possible_characters: %w[4 2], equal: true },
                { position: 9, possible_characters: %w[H J K L M], equal: true }
              ],
              kit_ids: [13, 98, 141],
              part_numbers: []
            }
          ]
        end
        let(:matching_ids) { [13, 98, 141] }

        it 'returns only the three kits that match' do
          kits = vin_decoder.decode
          expect(kits.count).to eq(matching_ids.count)
        end

        it 'returns only kits with proper ids' do
          kits = vin_decoder.decode
          kits.each do |kit|
            expect(matching_ids).to include(kit.id)
          end
        end
      end
    end
  end
end
