# frozen_string_literal: true

class Vin::VinDecoder
  attr_reader :current_user, :vin

  def initialize(current_user, vin)
    @vin = vin.upcase.strip
    @current_user = current_user
  end

  def decode
    vin_associations.each do |vin_association|
      return extract_kits(vin_association) if association_satisfies_rules?(vin_association)
    end
    []
  end

  # Must be a list of hashes with the following format (some times we only need kit_ids or part_numbers, in that case
  # just leave the one not needed as an empty array):
  #
  # [
  #   {
  #     vin_rules: [
  #       { position: number, possible_characters: [character, character], equal: true },
  #       { position: number, possible_characters: [character], equal: false },
  #       ...
  #     ],
  #     user_rules: [
  #       user_id,
  #       user_id,
  #       ...
  #     ]
  #     kit_ids: [
  #       number,
  #       number,
  #       ...
  #     ],
  #     part_numbers: [
  #       string,
  #       string,
  #       ...
  #     ]
  #   },
  #   ...
  # ]
  def vin_associations
    raise NotImplementedError
  end

  private

  def association_satisfies_rules?(vin_association)
    vin_satisfies_rules?(vin_association[:vin_rules]) && user_satisfies_rules?(vin_association[:user_rules])
  end

  def vin_satisfies_rules?(rules)
    rules.all? do |rule|
      if rule[:equal]
        rule[:possible_characters].include?(vin[rule[:position]])
      else
        rule[:possible_characters].exclude?(vin[rule[:position]])
      end
    end
  end

  def user_satisfies_rules?(user_ids)
    return true unless user_ids.present?

    user_ids.include?(current_user&.id)
  end

  def extract_kits(vin_association)
    kit_ids = vin_association[:kit_ids]
    part_numbers = vin_association[:part_numbers]

    raise ArgumentError if kit_ids.empty? && part_numbers.empty?

    if kit_ids.empty?
      Kit.includes(:kit_type).includes(:model).where(part_number: part_numbers)
    elsif part_numbers.empty?
      Kit.includes(:kit_type).includes(:model).where(id: kit_ids)
    else
      Kit.includes(:kit_type).includes(:model).where(part_number: part_numbers, id: kit_ids)
    end
  end
end
