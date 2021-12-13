// Load all the controllers within this directory and all subdirectories. 
// Controller files must be named *_controller.js.

import { Application } from "stimulus"
import { definitionsFromContext } from "stimulus/webpack-helpers"
import StimulusReflex from 'stimulus_reflex'
import consumer from '../channels/consumer'
import controller from '../controllers/application_controller'
// Example request import, is declared in request.d.ts
import { FetchRequest } from "@rails/request.js"
import { navigator } from "@hotwired/turbo"

function showProgressBar() {
    navigator.delegate.adapter.progressBar.setValue(0)
    navigator.delegate.adapter.progressBar.show()
}
function hideProgressBar() {
    navigator.delegate.adapter.progressBar.setValue(1)
    navigator.delegate.adapter.progressBar.hide()
}
export function withProgress(request) {
    showProgressBar()

    return request.then((response) => {
        hideProgressBar()
        return response
    })
}
export function get(url, options) {
    const request = new FetchRequest("get", url, options)
    return withProgress(request.perform())
}

const application = Application.start()
const context = require.context("controllers", true, /_controller\.js$/)
application.load(definitionsFromContext(context))
StimulusReflex.initialize(application, { consumer, controller, isolate: true })
StimulusReflex.debug = process.env.RAILS_ENV === 'development'
