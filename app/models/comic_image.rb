class ComicImage < ActiveRecord::Base

  default_scope { order('position asc') }
  belongs_to :comic_chapter, dependent: :destroy

  acts_as_list

  has_attached_file :comic, styles: {medium: "300x300#", large: "500x500#"}
  validates_attachment_content_type :comic, :content_type => ["image/jpg", "image/jpeg", "image/png"]

end