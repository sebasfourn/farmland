class PagesController < ApplicationController
  def home
    current_month = Date.today.strftime("%m").to_i
    @products = ProductInfo.where("month = #{current_month}")
  end
end
