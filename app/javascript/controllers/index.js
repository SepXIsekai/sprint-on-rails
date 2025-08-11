// Import and register all your controllers from the importmap via controllers/**/*_controller
import { application } from "controllers/application"
import { eagerLoadControllersFrom } from "@hotwired/stimulus-loading"
import FormController from "./form_controller.js"

application.register("form", FormController)
eagerLoadControllersFrom("controllers", application)
