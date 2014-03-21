class Feedback < ActiveRecord::Base
  belongs_to :comic

  scope :likes, lambda {|comic| where(comic_id: comic, type: 'like')}
  scope :comments, lambda {|comic| where(comic_id: comic, type: 'comment')}
  scope :ratings, lambda {|comic| where(comic_id: comic, type: 'rating')}

  after_save :add_likes, if: self.type.eql?('like')

  def add_likes
    comic.likes = comic.likes + 1
    comic.save
  end


end
