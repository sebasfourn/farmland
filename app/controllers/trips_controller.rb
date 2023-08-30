class TripsController < ApplicationController

# TODO: PU to continue implementing empty chat pages
  def index
    @trips = Trip.all
  end

  def show
    @trip = Trip.find(params[:id])
  end

  private

  def trip_params
    params.require(:trip).permit(:date, :seat, :address)
  end
end
