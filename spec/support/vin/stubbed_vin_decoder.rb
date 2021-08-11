# frozen_string_literal: true

class Vin::StubbedVinDecoder < Vin::VinDecoder
  attr_reader :associations

  def initialize(current_user, vin, associations)
    @associations = associations
    super(current_user, vin)
  end

  def vin_associations
    associations
  end
end
