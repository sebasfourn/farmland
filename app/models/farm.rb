class Farm < ApplicationRecord
  has_many :products, dependent: :destroy
  has_many :trips
end
