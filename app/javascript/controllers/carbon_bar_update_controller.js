import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="carbon-bar-update"
export default class extends Controller {

  static values = {
    currentCo2: Number
  }

  connect() {
    console.log("Hello from carbon bar updater")
  }

  quantity() {
    console.log(this.currentCo2Value)
  }
}
