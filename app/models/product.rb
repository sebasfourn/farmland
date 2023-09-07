class Product < ApplicationRecord
  belongs_to :farm
  belongs_to :product_info
  has_many :order_products
  has_one_attached :photo
end
