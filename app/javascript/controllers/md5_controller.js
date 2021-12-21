import { Controller } from "@hotwired/stimulus"
// md5 example
export default class extends Controller {
    convert(event) {
        event.preventDefault()
        event.target.textContent = md5(event.target.textContent)
    }
}
