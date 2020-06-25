import consumer from "./consumer"
import { createConsumer } from "@rails/actioncable";

consumer.subscriptions.create("RoomChannel", {
  connected() {
    // Called when the subscription is ready for use on the server
    console.log("Nos Conectamos");
  },

  disconnected() {
    // Called when the subscription has been terminated by the server
  },

  received(data) {
    $("#chats").append(data['chat'])
    // Called when there's incoming data on the websocket for this channel
  }

});
