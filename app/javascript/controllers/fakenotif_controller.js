import { Controller } from "stimulus"

export default class extends Controller {
  static targets = [ 'count' ];

  connect() {
    setInterval(this.refresh, 7000);
  }

  refresh = () => {
    fetch('/', { headers: { accept: "application/json" }})
      .then(response => response.json())
      .then((data) => {
        // TODO put what we want to display here
        //this.countTarget.innerText = data.bookings.length;
        const notifType = data.notifType;
        const notifMessage = data.notifMessage;
        const bookingName = data.newBooking;
        
        let bell_html = "<i class=\"far fa-bell text-gray-200 text-2xl text-left\"></i>"
        if (notifType == 'emptyActivities') {
          bell_html = "<i style=\"color: Tomato;\" class=\"far fa-bell text-gray-200 text-2xl text-left\"></i> \
                       <div id=\"notif-message\" hidden>" + `${notifMessage}` + "</div>"
        } else if (notifType == 'newBooking') {
          bell_html = "<i style=\"color: Dodgerblue;\" class=\"far fa-bell text-gray-200 text-2xl text-left\"></i>"
        }
        this.countTarget.innerHTML = bell_html;
      });
  }
}
