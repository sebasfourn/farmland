class PagesController < ApplicationController
  def home
    products = {
      "05" => %w[asparagus],
      "06" => %w[radishes spinach strawberries lettuce green_onions herbs rhubarb],
      "07" => %w[raspberries broccoli zucchini beets kale],
      "08" => %w[carrots blueberries cantaloupes tomatoes beans leeks eggplant],
      "09" => %w[apples pepper],
      "10" => %w[sweet_potatoes squash turnips]
    }

    @products = Product.all

    all_year = %w[meat cranberries mushrooms potatoes cabbage]

    current_month = Date.today.strftime("%m")
    current_products = products[current_month]
    current_products.concat(all_year)

    current_products

    @farms = Farm.all.select do |farm|
      farm.products.any? do |product|
        current_products.include?(product.name)
      end
    end
  end
end
