class RoomChannel < ApplicationCable::Channel
  def subscribed
    stream_from "room"
  end

  def crear(data)
  
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
