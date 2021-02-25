class User < ApplicationRecord
  validates :username, presence: true, uniqueness: true
  EMAIL_FORMAT = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i.freeze
  validates :email, presence: true, format: { with: EMAIL_FORMAT }

  has_many :posts
    has_many :comments


end
