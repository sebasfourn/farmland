class TripsController < ApplicationController
  def index
    if current_user.trips.any?
      @trips = current_user.trips
    else
      @trips = current_user.orders.map do |order|
        order.trip
      end
    end
  end

  def show
    @trip = Trip.find(params[:id])
    @message = Message.new
  end
end
