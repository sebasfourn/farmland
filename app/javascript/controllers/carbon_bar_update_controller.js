import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="carbon-bar-update"
export default class extends Controller {
  connect() {
    console.log("Hello from carbon bar updater")
  }
}
