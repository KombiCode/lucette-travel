import { Controller } from "stimulus"

export default class extends Controller {
  static targets = ["myinput", "mylist", "nbre", "nbreal"];

  change(e) {
    const checkbox = e.currentTarget
    const csrfToken = document.querySelector("[name='csrf-token']").content

    fetch(`/tasks/${checkbox.dataset.taskId}`, {
      method: 'PATCH',
      headers: { 'Content-Type':'application/json', 'X-CSRF-Token': csrfToken },
      body: JSON.stringify({task: {done: checkbox.checked}})
    })
  }
}


