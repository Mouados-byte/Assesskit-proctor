import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="avatar-upload"
export default class extends Controller {
  static targets = ["input", "preview"]

  preview() {
    const file = this.inputTarget.files[0]
    if (file) {
      const reader = new FileReader()
      reader.onload = (e) => {
        this.previewTarget.src = e.target.result
      }
      reader.readAsDataURL(file)
    }
  }
}
