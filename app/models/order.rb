class Order < ApplicationRecord
  belongs_to :trip
  belongs_to :user
  has_many :orders_products
end
