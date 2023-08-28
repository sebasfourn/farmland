class Trip < ApplicationRecord
  belongs_to :user
  belongs_to :farm
  has_many :orders
  has_many :messages
end
