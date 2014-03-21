class Comic < ActiveRecord::Base
  has_many :comic_images
  has_many :feedbacks

  belongs_to :user
end
