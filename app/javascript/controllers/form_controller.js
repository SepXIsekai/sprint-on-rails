import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    console.log("Form controller connected!")
    console.log("Element:", this.element)
  }

  test() {
    console.log("Test button clicked!")
    alert("Stimulus is working!")
  }

  previewImage(event) {
    console.log("previewImage called!")
    const file = event.target.files[0]
    const preview = document.getElementById('image-preview')
    const previewImg = document.getElementById('preview-img')

    console.log("File:", file)
    console.log("Preview element:", preview)
    console.log("Preview img element:", previewImg)

    if (file && preview && previewImg) {
      const reader = new FileReader()
      reader.onload = function(e) {
        console.log("File loaded!")
        previewImg.src = e.target.result
        preview.classList.remove('hidden')
      }
      reader.onerror = function(e) {
        console.error("Error reading file:", e)
      }
      reader.readAsDataURL(file)
    } else {
      console.error("Missing elements:", { file, preview, previewImg })
    }
  }

  removeImage(event) {
    console.log("removeImage called!")
    const fileInput = this.element.querySelector('input[type="file"]')
    const preview = document.getElementById('image-preview')
    
    if (fileInput && preview) {
      fileInput.value = ''
      preview.classList.add('hidden')
    } else {
      console.error("Missing elements for remove:", { fileInput, preview })
    }
  }
}