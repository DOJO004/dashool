import { Controller } from "@hotwired/stimulus";

// Connects to data-controller="swiper"
export default class extends Controller {
  connect() {
    this.swiper = new Swiper(".mySwiper", {
      spaceBetween: 30,
      centeredSlides: true,
      pagination: {
        el: ".swiper-pagination",
        clickable: true,
      },
    });
  }
}
