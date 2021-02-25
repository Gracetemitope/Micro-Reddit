class User < ApplicationRecord
  validates :username, presence: true, uniqueness: { case_sensitive: true }, length: { maximum: 50 }
  EMAIL_FORMAT = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: EMAIL_FORMAT }

  has_many :posts
  has_many :comments
end
