class Product < ApplicationRecord
  IRREGULAR_PLURAL = {
    'sweet potato' => 'sweet potatoes',
    'kale' => 'kale',
    'broccoli' => 'broccoli',
    'chicken breast' => 'chicken breast',
    'lamb' => 'lamb',
    'ground beef' => 'ground beef',
    'ground pork' => 'ground pork',
    'ground turkey' => 'ground turkey',
    'asparagus' => 'asparagus',
    'pork' => 'pork'
  }

  belongs_to :farm
  belongs_to :product_info
  has_many :order_products
  has_one_attached :photo
end
