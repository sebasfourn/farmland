import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="carbon-bar-update"
export default class extends Controller {

  static values = { current: Number }
  static targets = ["quantity", "co2"]

  addProductCo2() {

    let total = 0
    document.querySelectorAll('[data-co2-saved]').forEach(s =>
      total += s.value * s.dataset.co2Saved)
    const topBanner = document.getElementById("current-user-co2-saved")
    topBanner.innerHTML = `${(total + this.currentValue).toFixed(2) } kg of CO2!`
  }
}
