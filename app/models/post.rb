class Post < ApplicationRecord
  has_many_attached :images
  has_many :comments

  validates :content, presence: true
end
