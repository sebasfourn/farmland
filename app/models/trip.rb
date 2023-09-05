class Trip < ApplicationRecord
  belongs_to :user
  belongs_to :farm
  has_many :orders, dependent: :destroy
  has_many :messages
end
