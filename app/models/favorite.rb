class Favorite < ApplicationRecord
  belongs_to :post_reader
  belongs_to :post

  validates_uniqueness_of :post_id, scope: :post_reader_id
end
