module Concerns
  module User
    module JsonBuilder
      extend ActiveSupport::Concern

      def custom_hash
        json = attributes
        json['photo'] = self.pic.url
        json['name'] = name
        json['birthday'] = birthday.try(:strftime,'%m/%d/%Y')
        json['total_likes'] = total_likes
        json
      end
    end
  end
end

