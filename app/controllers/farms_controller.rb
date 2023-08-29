class FarmsController < ApplicationController
  def index
    @farms = Farm.all
  end

  def show
    @farm = Farm.find(params[:id])
  end

  private

  def farm_params
    params.require(:farm).permit(:name, :address, :open, :rating)
  end
end
