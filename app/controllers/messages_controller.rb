class MessagesController < ApplicationController
  def create
    @trip = Trip.find(params[:trip_id])
    @message = Message.new(message_params)
    @message.trip = @trip
    @message.user = current_user
    if @message.save
      ChatroomChannel.broadcast_to(
        @trip,
        render_to_string(partial: "message", locals: { message: @message })
      )
      head :ok
    else
      render "trips/show"
    end
  end

  private

  def message_params
    params.require(:message).permit(:content)
  end
end
