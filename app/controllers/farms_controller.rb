class FarmsController < ApplicationController
  skip_before_action :verify_authenticity_token, only: %i[favorite unfavorite]
  before_action :find_farm, only: %i[show favorite unfavorite]
  before_action :time, only: %i[index show favorites]

  def index
    @farms = Farm.all
    @farms = @farms.search_farm_by_query(params[:query]) if params[:query].present?
    @farms = @farms.search_farm_by_vegetable("vegetable") if params[:vegetable].present?
    @farms = @farms.search_farm_by_fruit("fruit") if params[:fruit].present?
    @farms = @farms.search_farm_by_meat("meat") if params[:meat].present?

    @farms = @farms.sort_by do |farm|
      farm.distance_to([current_user.latitude, current_user.longitude]).round
    end

    case params[:sort]
    when "distance"
      @farms = @farms.sort_by do |farm|
        farm.distance_to([current_user.latitude, current_user.longitude]).round
      end
    when "open"
      @farms = @farms.sort_by { |farm| @time.between?(farm.opening_time, farm.closing_time) ? 0 : 1 }
    when "carpool"
      @farms = @farms.select { |farm| farm.trips.any? }
    when "rating"
      @farms = @farms.sort_by(&:rating).reverse
    end
  end

  def show
    @products = @farm.products
    @order = Order.new
  end

  def favorite
    current_user.favorite(@farm)
    respond_to do |format|
      format.text { render partial: "heart", locals: { farm: @farm }, formats: [:html] }
      format.html { redirect_to farms_path }
    end
  end

  def unfavorite
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

  def find_farm
    @farm = Farm.find(params[:id])
  rescue ActiveRecord::RecordNotFound => e
    redirect_to farms_path, notice: e.message
  end

  def time
    @time = ((Time.now.hour.to_f - 4) + (Time.now.min.to_f / 60))
  end

  def farm_params
    params.require(:farm).permit(:name, :address, :open, :rating)
  end
end
