module Concerns
  module Comic
    module JsonBuilder
      extend ActiveSupport::Concern

      def custom_hash
        json = attributes
        json["cover"] = cover_photo
        json["medium_cover"] = cover_photo.present? ? cover_photo.url(:medium) : ''
        json
      end
    end
  end
end

