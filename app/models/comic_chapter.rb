class ComicChapter < ActiveRecord::Base
  belongs_to :comic
  has_many :comic_images, dependent: :destroy
end
