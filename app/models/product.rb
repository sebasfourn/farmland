class Product < ApplicationRecord
  belongs_to :farm
  has_many :orders_products
end
