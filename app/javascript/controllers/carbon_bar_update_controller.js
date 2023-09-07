import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="carbon-bar-update"
export default class extends Controller {

  static values = { current: Number }

  addProductCo2() {
    const topBannerText = document.getElementById("top-banner-text");
    const topBannerCarbonValue = document.getElementById("current-user-co2-saved");
    // const radioButton = document.querySelector('input[name="order[trip_id]"]:checked')
    // console.log(radioButton)
    const tripCo2 = document.querySelector('.farm-order-radio-buttons input:checked + label .trip-co2')?.innerText ||  0
    const topBannerCo2Equivalent = document.getElementById("co2-equivalent-trees");
    topBannerText.classList.remove("add-carbon-saving");
    let total = 0;
    document.querySelectorAll('[data-co2-saved]').forEach((s =>
      total += s.value * s.dataset.co2Saved))
    total += (parseFloat(tripCo2)/1000)
    topBannerCarbonValue.innerHTML = `${(total + this.currentValue ).toFixed(2) } kg of CO2!`;
    topBannerCo2Equivalent.innerText = `${(total + this.currentValue/0.362).toFixed(0)} weeks`
    topBannerText.classList.add("add-carbon-saving");
    setTimeout(function() {
      topBannerText.classList.remove("add-carbon-saving");
  }, (.3 * 1000));
  }
}
