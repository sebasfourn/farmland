import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="chatroom-subscription"
export default class extends Controller {
  connect() {
    console.log("subscribe to the chatroom")
  }
}
