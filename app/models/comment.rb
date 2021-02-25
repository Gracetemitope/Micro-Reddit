class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post
  validates_associated :user
  validates_associated :post
  validates :comment, presence: true, length: { maximum: 250 }
  validates :username, presence: true, uniqueness: { case_sensitive: true }, length: { maximum: 50 }
end
