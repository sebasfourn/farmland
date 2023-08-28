class Farm < ApplicationRecord
  has_many :products
  has_many :trips
end
