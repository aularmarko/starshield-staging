# frozen_string_literal: true

ActiveAdmin.register_page 'Vin Decoder' do
  content do
    form action: 'vin_decoder', method: :get do |f|
      f.input :vin, type: :text, name: 'vin_to_decode'
      f.input :submit, type: :submit
    end

    if params[:vin_to_decode].present?
      br
      panel 'Kits' do
        table_for controller.decode_vin(params[:vin_to_decode]) do |_kit|
          column(:year) { |kit| "#{kit&.start_year} - #{kit&.end_year}" }
          column(:make) { |kit| kit&.model&.make&.ak_make }
          column(:model) { |kit| kit&.model&.ak_model }
          column(:part_number)
          column(:type) { |kit| kit&.kit_type&.kit_type }
          column(:download) { |kit| link_to 'Download', controller.download_link(kit), target: '_blank' }
        end
      end
    end
  end

  controller do
    def decode_vin(vin)
      decoded_kits = []

      available_vin_decoders.each do |available_vin_decoder|
        vin_decoder = "Vin::#{available_vin_decoder}VinDecoder".constantize
        decoded_kits = vin_decoder.new(current_user, vin).decode

        break unless decoded_kits.empty?
      end

      decoded_kits
    end

    def download_link(kit)
      kit&.file_resource&.download_link
    end

    private

    def available_vin_decoders
      %w[Audi Toyota]
    end
  end
end
