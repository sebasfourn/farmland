class MessagesController < ApplicationController
  def create
    @trip = Trip.find(params[:trip_id])
    @message = Message.new(message_params)
    @message.trip = @trip
    @message.user = current_user
    if @message.save
      redirect_to trip_path(@trip)
    else
      render "trips/show"
    end
  end

  private

  def message_params
    params.require(:message).permit(:content)
  end
end
