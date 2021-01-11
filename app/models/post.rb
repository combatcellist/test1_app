class Post < ApplicationRecord
  has_many_attached :images
  has_many   :comments
  belongs_to :post_writer

  validates :content, presence: true
end
