module Concerns
  module Comic
    module JsonBuilder
      extend ActiveSupport::Concern

      def custom_hash
        json = attributes
        json["cover_photo"] = cover_photo.present? ? cover_photo.url(:banner) : ''
        json
      end
    end
  end
end

