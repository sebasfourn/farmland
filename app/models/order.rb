class Order < ApplicationRecord
  belongs_to :trip
  belongs_to :user
  has_many :order_products
end
