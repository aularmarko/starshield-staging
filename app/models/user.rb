# frozen_string_literal: true

class User < ApplicationRecord
  devise :database_authenticatable, :validatable

  belongs_to :library, required: false
  has_many :histories
  before_save :update_super_admin, if: -> { super_admin_changed? && !new_record? }
  before_save :update_kits_admin, if: -> { kits_admin_changed? && !new_record? }
  before_save :update_admin, if: -> { admin_changed? && !new_record? }

  # Some users do not have emails, but devise by default requires it
  def email_required?
    false
  end

  def admin?
    admin
  end

  def kits_admin?
    admin && kits_admin
  end

  def super_admin?
    admin && kits_admin && super_admin
  end

  def update_super_admin
    return unless new_admin_flags_exists?
    return unless super_admin

    update_column(:admin, true)
    update_column(:kits_admin, true)
  end

  def update_kits_admin
    return unless new_admin_flags_exists?

    update_column(:admin, true) if kits_admin
    update_column(:super_admin, false) unless kits_admin
  end

  def update_admin
    return unless new_admin_flags_exists?
    return if admin

    update_column(:super_admin, false)
    update_column(:kits_admin, false)
  end

  def super_admin_changed?
    changes[:super_admin]
  end

  def kits_admin_changed?
    changes[:kits_admin]
  end

  def admin_changed?
    changes[:admin]
  end

  def new_admin_flags_exists?
    ActiveRecord::Base.connection.column_exists?(:users, :super_admin) &&
      ActiveRecord::Base.connection.column_exists?(:users, :kits_admin)
  end
end
