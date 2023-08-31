class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :trips, dependent: :destroy
  has_many :messages
  has_many :orders

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  acts_as_favoritor

  # def self.driver_distance(lat1, lng1, lat2, lng2)
  #   if user.driver == true

  #   end
  #   Geocoder::Calculations.distance_between([lat1,lng1], [lat2,lng2])
  # end
end
