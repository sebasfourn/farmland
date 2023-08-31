class TripsController < ApplicationController
  def index
    @trips = current_user.trips
  end

  def show
    @trip = Trip.find(params[:id])
    @message = Message.new
  end
end
