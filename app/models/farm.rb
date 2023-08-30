class Farm < ApplicationRecord
  has_many :products, dependent: :destroy
  has_many :trips, dependent: :destroy
  has_one_attached :photo

  acts_as_favoritable
end
