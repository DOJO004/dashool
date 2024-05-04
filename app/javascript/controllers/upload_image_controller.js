import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["input", "form"];

  connect() {
    console.log("Connected");
  }

  selectImage(){
    this.inputTarget.click();
  }

  uploadImage() {
    this.formTarget.submit();
  }
}
