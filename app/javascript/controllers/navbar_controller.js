import { Controller } from "@hotwired/stimulus";

// Connects to data-controller="navbar"
export default class extends Controller {
  static targets = ["menu"];

  connect() {}

  showMenu() {
    const menu = this.menuTarget;

    // 使用 contains 而不是 include，並修正 if 條件語句的錯誤
    if (menu.classList.contains("w-0")) {
      menu.classList.add("w-full","md:w-96");
      menu.classList.remove("w-0");
    }else{
      menu.classList.remove("w-full","md:w-96");
      menu.classList.add("w-0");
    }
  }

  closeMenu() {
    const menu = this.menuTarget;

    menu.classList.add("w-0");
    menu.classList.remove("w-full","md:w-96");
  }
}
