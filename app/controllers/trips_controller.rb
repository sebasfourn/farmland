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
    @messages = Message.where(trip: @trip)
    @messages.update_all(seen: true)
    # @messages.each do |message|
    #   message.seen = true
    #   message.save
    # end
  end
end
