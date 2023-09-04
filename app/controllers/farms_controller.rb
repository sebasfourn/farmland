class FarmsController < ApplicationController
  skip_before_action :verify_authenticity_token, only: %i[favorite unfavorite]

  def index
    @farms = Farm.all.sort_by do |farm|
      farm.distance_to([current_user.latitude, current_user.longitude]).round
    end
  end

  def show
    @farm = Farm.find(params[:id])
    @products = @farm.products
    @order = Order.new
  end

  def favorite
    @farm = Farm.find(params[:id])
    current_user.favorite(@farm)
    respond_to do |format|
      format.text { render partial: "heart", locals: { farm: @farm }, formats: [:html] }
      format.html { redirect_to farms_path }
    end
  end

  def unfavorite
    @farm = Farm.find(params[:id])
    current_user.unfavorite(@farm)
    respond_to do |format|
      if params[:page] == "favorites"
        if @current_user.all_favorited.empty?
          format.text { head :ok }
          format.html { redirect_to favorites_path }
        else
          format.text { head :no_content }
          format.html { redirect_to favorites_path }
        end
      else
        format.text { render partial: "heart", locals: { farm: @farm }, formats: [:html] }
        format.html { redirect_to farms_path }
      end
    end
  end

  def favorites
    @farms = current_user.favorited_by_type('Farm')
  end

  private

  def farm_params
    params.require(:farm).permit(:name, :address, :open, :rating)
  end
end
