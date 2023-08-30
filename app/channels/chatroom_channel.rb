class ChatroomChannel < ApplicationCable::Channel
  def subscribed
    chatroom = Trip.find(params[:id])
    stream_for chatroom
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
