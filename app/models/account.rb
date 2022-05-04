class Account < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :posts
  has_many :likes
  has_many :follows

  mount_uploader :image, ImageUploader

  validates :username, presence: true, length: { minimum: 3, maximum: 25 }

  def total_followers
    Follow.where(follower_id: id).count
  end

  def total_following
    Follow.where(following_id: id).count
  end
end
