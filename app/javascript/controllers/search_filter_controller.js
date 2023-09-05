import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="search-filter"
export default class extends Controller {
  static targets = ["filter"]
  connect() {
  }

  openFilter() {
    this.filterTarget.classList.toggle("d-none")
  }
}
