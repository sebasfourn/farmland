import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="favorite"
export default class extends Controller {
  static targets = ["unfavorite", "favorite", "heart"]
  connect() {
  }

  unfavorite(event) {
    event.preventDefault()
    fetch(this.unfavoriteTarget.href, {
      method: "POST",
      headers: { "Accept": "text/plain" }
    })
      .then(response => response.text())
      .then((data) => {
        this.#insertfavoriteAndScrollDown(data)
      })
  }

  favorite(event) {
    event.preventDefault()
    fetch(this.favoriteTarget.href, {
      method: "POST",
      headers: { "Accept": "text/plain" }
    })
      .then(response => response.text())
      .then((data) => {
        this.#insertfavoriteAndScrollDown(data)
      })
  }

  #insertfavoriteAndScrollDown(data) {
    this.heartTarget.innerHTML = data
    this.element.scrollTo(0, this.element.scrollHeight)
  }
}
