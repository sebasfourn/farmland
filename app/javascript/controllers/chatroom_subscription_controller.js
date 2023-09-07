import { Controller } from "@hotwired/stimulus"
import { createConsumer } from "@rails/actioncable"

// Connects to data-controller="chatroom-subscription"
export default class extends Controller {
  static values = {
    chatroomId: Number,
    currentUserId: Number
  }

  static classes = [
    'senderJustify',
    'receiverJustify',
    'senderStyle',
    'receiverStyle',
  ]

  static targets = ["messages"]

  connect() {
    this.messagesTarget.scrollTo(0, this.messagesTarget.scrollHeight)
    this.channel = createConsumer().subscriptions.create(
      { channel: "ChatroomChannel", id: this.chatroomIdValue },
      { received: data => this.#insertMessageAndScrollDown(data) }
    )
  }

  #insertMessageAndScrollDown(data) {
    const currentUserIsSender = this.currentUserIdValue === data.sender_id
    const messageElement = this.#buildMessageElement(currentUserIsSender, data.message)
    this.messagesTarget.insertAdjacentHTML("beforeend", messageElement.outerHTML)
    this.messagesTarget.scrollTo(0, this.messagesTarget.scrollHeight)
  }

  resetForm(event) {
    event.target.reset()
  }

  disconnect() {
    this.channel.unsubscribe()
  }

  #buildMessageElement(currentUserIsSender, message) {
    var div = document.createElement('div');
    div.innerHTML = message
    div = div.firstChild
    this.#justifyClass(div, currentUserIsSender)
    this.#userStyleClass(div.firstElementChild, currentUserIsSender)
    return div
  }

  #justifyClass(div, currentUserIsSender) {
    if (currentUserIsSender) {
      div.classList.add(this.senderJustifyClass)
      div.classList.remove(this.receiverJustifyClass)
    } else {
      div.classList.add(this.receiverJustifyClass)
      div.classList.remove(this.senderJustifyClass)
    }
  }

  #userStyleClass(div, currentUserIsSender) {
    if (currentUserIsSender) {
      div.classList.add(this.senderStyleClass)
      div.classList.remove(this.receiverStyleClass)
    } else {
      div.classList.add(this.receiverStyleClass)
      div.classList.remove(this.senderStyleClass)
    }
  }
}
