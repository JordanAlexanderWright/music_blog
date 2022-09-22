import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = [ 'name' ]
  connect() {
    console.log('hello stimulus')
    // this.element.textContent = 'hello'
  }

  get name(){
    return this.nameTarget.value
  }

  greet() {
    console.log(`Hello ${this.name}!`)
    // this.element.textConent = 'Hello Jordan!'
  }
}
