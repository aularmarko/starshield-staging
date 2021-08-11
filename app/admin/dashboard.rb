# frozen_string_literal: true

ActiveAdmin.register_page 'Dashboard' do
  menu priority: 1, label: proc { I18n.t('active_admin.dashboard') }

  content title: proc { I18n.t('active_admin.dashboard') } do
    div class: 'blank_slate_container', id: 'dashboard_default_message' do
      columns do
        column do
          panel 'Useful numbers' do
            table do
              thead do
                tr do
                  th 'Amount of Kits'
                  th 'Amount of User'
                  th 'Amount of Models'
                  th 'Amount of Makes'
                end
              end
              tbody do
                tr style: 'font-size: 150%' do
                  td Kit.count
                  td User.count
                  td Model.count
                  td Make.count
                end
              end
            end
          end
        end
      end
      columns do
        column do
          panel 'Kit Types' do
            table_for KitType.limit(20).each do |_kit_type|
              column(:kit_type, &:kit_type)
              column(:ak_type, &:ak_type)
            end
          end
        end
        column do
          panel 'Libraries' do
            table_for Library.limit(20).each do |_library|
              column(:library, &:library)
              column(:description, &:description)
            end
          end
        end
        column do
          panel 'Makes' do
            table_for Make.limit(20).each do |_make|
              column(:ak_make, &:ak_make)
            end
          end
        end
      end
    end
  end
end
