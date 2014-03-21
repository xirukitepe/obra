class ComicImage < ActiveRecord::Base
  belongs_to :comic_chapter

  has_attached_file :comic
end
