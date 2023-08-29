class Farm < ApplicationRecord
  has_many :products, dependent: :destroy
  has_many :trips
  has_one_attached :photo
end
