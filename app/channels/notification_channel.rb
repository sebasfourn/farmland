class NotificationChannel < ApplicationCable::Channel
  def subscribed

    stream_from "notification_for_user#{params[:id]}"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
