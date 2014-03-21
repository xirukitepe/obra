module Concerns
  module Comic
    module JsonBuilder
      extend ActiveSupport::Concern

      def custom_hash
        json = attributes
        json["cover"] = cover_photo
        json
      end
    end
  end
end

