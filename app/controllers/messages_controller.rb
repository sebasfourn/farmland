class MessagesController < ApplicationController
  def create
    @trip = Trip.find(params[:trip_id])
    @message = Message.new(message_params)
    @message.trip = @trip
    @message.user = current_user

    if @message.save
      ChatroomChannel.broadcast_to(
        @trip,
        message: render_to_string(partial: "message", locals: { message: @message }),
        sender_id: @message.user.id
      )

      User.users_to_notify_minus_sender_for_trip(@trip, @message.user).each do |user|
        unseen_messages = Message.unseen_messages_count_for(user)
        NotificationChannel.broadcast_to(
          user,
          render_to_string(partial: "shared/notification", locals: { unseen_messages: unseen_messages })
        )
      end
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
