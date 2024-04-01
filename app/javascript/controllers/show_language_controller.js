import { Controller } from "@hotwired/stimulus";

// Connects to data-controller="show-language"
export default class extends Controller {
  static targets = ["language"];
  show() {
    const languages = this.languageTarget;

    if (languages.classList.contains("h-0")) {
      languages.classList.remove("h-0");
      languages.classList.add("h-32");
    } else {
      languages.classList.add("h-0");
      languages.classList.remove("h-32");
    }
  }
}
