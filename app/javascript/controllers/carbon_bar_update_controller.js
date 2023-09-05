import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="carbon-bar-update"
export default class extends Controller {

  static values = { current: Number }
  static targets = ["quantity", "co2"]

  addProductCo2() {
    const topBannerText = document.getElementById("top-banner-text")
    topBannerText.classList.remove("add-carbon-saving")
    let total = 0;
    document.querySelectorAll('[data-co2-saved]').forEach(s =>
      total += s.value * s.dataset.co2Saved);
    const topBannerCarbonValue = document.getElementById("current-user-co2-saved");
    topBannerCarbonValue.innerHTML = `${(total + this.currentValue).toFixed(2) } kg of CO2!`;
    topBannerText.classList.add("add-carbon-saving");
    setTimeout(function() {
      topBannerText.classList.remove("add-carbon-saving");
  }, (.3 * 1000));
  }
}
