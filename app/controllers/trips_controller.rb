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
    @trip = Trip.includes(:messages).find(params[:id])
    @message = Message.new
    @trip.messages.update_all(seen: true)

  end
end
