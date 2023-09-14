import { Controller } from "@hotwired/stimulus";
import { gsap } from "gsap";

// Connects to data-controller="search-filter"
export default class extends Controller {
  static targets = ["filter"]

  openFilter() {
    this.filterTarget.classList.toggle("d-none");
    const tl = gsap.timeline({ defaults: { ease: "power2" } });
    tl.fromTo(".filter-div", { y: -100 }, { opacity: 1, y: 0, duration: 0.8 });
  }
}
