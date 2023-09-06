import { Controller } from "@hotwired/stimulus"
import { createConsumer } from "@rails/actioncable"

// Connects to data-controller="notification-subscription"
export default class extends Controller {

  static values = { userId: Number }
  static targets = ["navbar"]
  connect() {
    console.log("Connected")
    this.channel = createConsumer().subscriptions.create(
      { channel: "NotificationChannel", id: this.userIdValue },
      {
        received: (data) => {
          this.navbarTarget.querySelector('.notification-container').outerHTML = data
          document.querySelector("#notificationAudio").play()
        }
      }
    )
    console.log(`Notification for ${this.userIdValue}.`)
  }
}
