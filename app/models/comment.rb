class Comment < ApplicationRecord
  belongs_to :post_reader
  belongs_to :post_writer
  belongs_to :post

  validates :text. presence: true
end
