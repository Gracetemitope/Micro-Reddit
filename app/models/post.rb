class Post < ApplicationRecord
  has_many :comments
  belongs_to :user
  validates_associated :user
  validates :body, presence: true, length: { maximum: 250 }
  validates :username, presence: true, uniqueness: { case_sensitive: true }, length: { maximum: 50 }
end
