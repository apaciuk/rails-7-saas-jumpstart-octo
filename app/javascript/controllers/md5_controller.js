import { Controller } from "@hotwired/stimulus"
import md5 from 'md5'
// md5 example
export default class extends Controller {
    convert(event) {
        event.preventDefault()
        event.target.textContent = md5(event.target.textContent)
        console.log(md5('message'))
    }
}
