class Product < ApplicationRecord
  belongs_to :farm
  has_many :order_products
  has_one_attached :photo
end
