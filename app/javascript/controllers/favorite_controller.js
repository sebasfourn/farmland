import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="favorite"
export default class extends Controller {
  static targets = ["unfavorite", "favorite", "heart"]
  static values = { page: String }

  unfavorite(event) {
    event.preventDefault()
    if ( this.pageValue === "index" ) {
      fetch(this.unfavoriteTarget.href, {
        method: "POST",
        headers: { "Accept": "text/plain" }
      })
        .then(response => response.text())
        .then((data) => {
          this.#insertfavoriteAndScrollDown(data)
        })
    } else if (this.pageValue === "favorites") {
      fetch(`${this.unfavoriteTarget.href}?page=favorites`, {
        method: "POST",
        headers: { "Accept": "text/plain" }
      })
        .then((response) => {
          if (response.status === 204) {
            this.element.remove()
          } else if (response.status === 200) {
            this.element.remove()
            document.querySelector(".no-message").classList.remove("d-none")
          }
        }
      )
    }
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
      }
    )
  }

  #insertfavoriteAndScrollDown(data) {
    this.heartTarget.innerHTML = data
    this.element.scrollTo(0, this.element.scrollHeight)
  }
}
