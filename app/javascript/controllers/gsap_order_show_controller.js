import { Controller } from "@hotwired/stimulus";
import { gsap } from "gsap";

// Connects to data-controller="gsap-order-show"
export default class extends Controller {
  static values = {
    firstLook: Boolean,
  };

  static targets = ["carbonPopup", "space"];

  connect() {
    if (this.firstLookValue) {
      this.carbonPopupTarget.classList.remove("d-none");
      this.spaceTarget.classList.remove("space-none");
      const tl = gsap.timeline({ defaults: { ease: "power1.out" } });
      tl.fromTo(
        ".carbon-recap",
        { opacity: 0, y: 100 },
        { opacity: 1, y: 0, duration: 1 }
      );
    } else {
    }
  }
}
