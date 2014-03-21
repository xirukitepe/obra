class Comic < ActiveRecord::Base
  has_many :comic_chapters
  has_many :feedbacks

  belongs_to :user

  scope :comics_of, lambda {|artist_id| where(user_id: artist_id)}
  scope :hottest, lambda { |bench| where('no_likes > ?', bench)}
  scope :new_realease, lambda{|start_date,end_date| where('date >= ? and date <= ?',start_date,end_date)}
  scope :recent_updates, lambda{|start_date,end_date| where('update_chapter >= ? and update_chapter <= ?',start_date,end_date)}

end
