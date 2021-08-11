# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    can :read, ActiveAdmin::Page, name: 'Dashboard'
    can %i[read update], History
    can %i[decode read], ActiveAdmin::Page, name: 'Vin Decoder'
    if user.super_admin?
      can :manage, User
      can :manage, Kit
      can %i[read create], Make
      can %i[read create update], Model
    elsif user.kits_admin?
      can :manage, Kit
      can %i[read create], Make
      can %i[read create update], Model
    end
  end
end
