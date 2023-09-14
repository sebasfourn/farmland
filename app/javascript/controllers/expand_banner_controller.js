import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="expand-banner"
export default class extends Controller {
  static targets = ["additionalText", "chevron"]

  expand() {
    this.additionalTextTarget.classList.toggle("d-none");
    this.additionalTextTarget.classList.toggle("topbanner-clicked");
    this.chevronTarget.classList.toggle("rotate-chevron")
  }
}
