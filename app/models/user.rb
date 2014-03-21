class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  include Concerns::User::JsonBuilder

  has_many :comics

  has_attached_file :pic
  validates_attachment_content_type :pic, :content_type => ["image/jpg", "image/jpeg", "image/png"]

  def total_likes
    comics.sum(:no_likes)
  end

  def name
    [firstname, lastname].join(' ')
  end
end
