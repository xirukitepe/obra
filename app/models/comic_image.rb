class ComicImage < ActiveRecord::Base
  belongs_to :comic_chapter, dependent: :destroy

  has_attached_file :comic
  validates_attachment_content_type :comic, :content_type => ["image/jpg", "image/jpeg", "image/png"]

end
