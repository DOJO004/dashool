import { Controller } from '@hotwired/stimulus';

// Connects to data-controller="navbar"
export default class extends Controller {
  static targets = ['menu'];

  connect() {}

  showMenu() {
    const menu = this.menuTarget;

    if (menu.classList.contains('h-0')) {
      menu.classList.add('h-96');
      menu.classList.remove('h-0');
    } else {
      menu.classList.remove('h-96');
      menu.classList.add('h-0');
    }
  }

  closeMenu() {
    const menu = this.menuTarget;

    menu.classList.add('h-0');
    menu.classList.remove('h-96');
  }
}
