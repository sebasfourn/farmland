import { Controller } from "@hotwired/stimulus";
import { gsap } from "gsap";

// Connects to data-controller="gsap-banner"
export default class extends Controller {
  static targets = ["display"]

  connect() {
    this.displayTarget.classList.remove("d-none");
    const tl = gsap.timeline({ defaults: { ease: "bounce" } });
    tl.fromTo(".topbanner", { y: -100 }, { opacity: 1, y: 0, duration: 0.8 });
  }
}
