class Chat < ApplicationRecord
  after_create_commit :send_via_websocket

  def send_via_websocket
    chat_partial = ApplicationController.renderer.render(partial: 'chats/chat', locals: {chat: self})
    ActionCable.server.broadcast("room", chat: chat_partial)
  end
end
