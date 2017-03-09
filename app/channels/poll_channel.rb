class PollChannel < ApplicationCable::Channel
  def subscribed
    stream_from "poll_#{params["poll_id"]}"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
