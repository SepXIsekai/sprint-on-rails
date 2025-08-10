import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["title"];
  static values = {submitUrl: String}


  connect() {
    console.log("11111123123131");
  }
  submit(){
    console.log("Button")
    console.log(this.submitUrlValue)
    this.formTarget.action = this.submitUrlValue
  }
}
