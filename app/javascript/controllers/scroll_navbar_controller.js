import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="scroll-navbar"
export default class extends Controller {
  static targets = ["threeButtons"];

  connect() {
    this.previousScroll = window.scrollY;
    this.scrollDirection = '';

    window.addEventListener('scroll', this.handleScroll.bind(this));
  }

  disconnect() {
    window.removeEventListener('scroll', this.handleScroll);
  }

  handleScroll() {
    const currentScroll = window.scrollY;

    if (currentScroll > this.previousScroll) {
      // Scroll Down
      this.scrollDirection = 'down';
      this.threeButtonsTarget.classList.remove("d-flex");
      this.threeButtonsTarget.classList.add("d-none");
    } else {
      // Scroll Up
      this.scrollDirection = 'up';
      this.threeButtonsTarget.classList.remove("d-none");
      this.threeButtonsTarget.classList.add("d-flex");
    }

    this.previousScroll = currentScroll;
  }
}
