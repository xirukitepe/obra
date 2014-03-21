module Concerns
  module User
    module JsonBuilder
      extend ActiveSupport::Concern

      def custom_hash
        json = attributes
        json['name'] = name
        json['birthday'] = birthday.strftime('%m/%d/%Y')
        json['total_likes'] = total_likes
        json
      end
    end
  end
end

