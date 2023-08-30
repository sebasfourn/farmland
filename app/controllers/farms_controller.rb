class FarmsController < ApplicationController
  def index
    @farms = Farm.all
  end

  def show
    @farm = Farm.find(params[:id])
    @products = @farm.products
    @order = Order.new
  end

  def favorite
    farm = Farm.find(params[:id])
    current_user.favorite(farm)
  end

  def unfavorite
    farm = Farm.find(params[:id])
    current_user.unfavorite(farm)
  end

  def favorites
    @farms = current_user.favorited_by_type('Farm')
  end

  private

  def farm_params
    params.require(:farm).permit(:name, :address, :open, :rating)
  end
end
