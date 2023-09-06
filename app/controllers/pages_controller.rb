class PagesController < ApplicationController
  def home
    @products = Product.all
    # current_month = Date.today.strftime("%m").to_i
    # @products = ProductInfo.where("month = #{current_month}")
  end
end
