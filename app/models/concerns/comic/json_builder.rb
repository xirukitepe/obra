module Concerns
  module Comic
    module JsonBuilder
      extend ActiveSupport::Concern

      def custom_hash
        json = attributes
        json["cover_photo"] = cover_photo.try(:url)
        json
      end
    end
  end
end

