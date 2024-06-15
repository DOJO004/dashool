import { Controller } from '@hotwired/stimulus';

// Connects to data-controller="navbar"
export default class extends Controller {
  static targets = ['menu'];

  connect() {}

  showMenu() {
    const menu = this.menuTarget;

    if (menu.classList.contains('w-0')) {
      menu.classList.add('w-full');
      menu.classList.remove('w-0');
    } else {
      menu.classList.remove('w-full');
      menu.classList.add('w-0');
    }
  }

  closeMenu() {
    const menu = this.menuTarget;

    menu.classList.add('w-0');
    menu.classList.remove('w-full');
  }
}
