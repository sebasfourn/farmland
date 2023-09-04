class Farm < ApplicationRecord
  has_many :products, dependent: :destroy
  has_many :trips, dependent: :destroy
  has_one_attached :photo

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  acts_as_favoritable

  # def distance(lng1, lng2, lat1, lat2)
  #   Geocoder::Calculations.distance_between([lat1,lng1], [lat2,lng2])
  # end

  include PgSearch::Model

  pg_search_scope :search_farm,
                  against: %i[name description],
                  using: {
                    tsearch: { prefix: true }
                  }
end
