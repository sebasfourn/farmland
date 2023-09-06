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

  def number_of_notifications
    number_messages = 0
    Order.where(user: self).pluck(:trip_id).each do |trip_id|
      number_messages += Message.where(trip_id: trip_id, seen: false).count

      # number_messages += Message.where(trip_id: trip_id, seen: false).where.not(user: self).count
    end
    return number_messages
  end

  # def self.driver_distance(lat1, lng1, lat2, lng2)
  #   if user.driver == true

  #   end
  #   Geocoder::Calculations.distance_between([lat1,lng1], [lat2,lng2])
  # end
end
