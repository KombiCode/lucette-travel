import { Controller } from "stimulus"

export default class extends Controller {
  static targets = [ 'count' ];

  connect() {
    setInterval(this.refresh, 3000);
  }

  refresh = () => {
    fetch('/', { headers: { accept: "application/json" }})
      .then(response => response.json())
      .then((data) => {
        // TODO put what we want to display here  
        //this.countTarget.innerText = data.bookings.length;
        const new_booking_name = data.newbooking;
        let bell_html = "<i class=\"far fa-bell text-gray text-2xl text-gray-600 mx-4\"></i>"
        if (new_booking_name == "KEF") {
          bell_html = "<span style=\"color: Dodgerblue;\"><i class=\"fas fa-bell text-blue text-2xl text-blue-600 mx-4\"></i></span>";
        }
        this.countTarget.innerHTML = bell_html;
      });
  }
}