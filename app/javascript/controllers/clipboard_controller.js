import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = [ 'source' ]
  static classes = [ 'supported' ]

  connect() {
    console.log('hello');
    console.log(this.supportedClass)
    if ('clipboard' in navigator) {
      this.element.classList.add(this.supportedClass)
    }
    console.log(this.supportedClass)
    this.element.classList.add(this.supportedClass)
  }
  copy(event) {
    event.preventDefault
    navigator.clipboard.writeText(this.sourceTarget.value)
  }
}

