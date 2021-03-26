import { Controller } from "stimulus"

export default class extends Controller {
  static targets = [ 'count' ];

  connect() {
    const interval = 5 * 1000;
    if (!window.setIntervalIsSet) {
      this.refresh();
      setInterval(this.refresh, interval);
      window.setIntervalIsSet = true  
    }
  }

  refresh = () => { 
    fetch('/check_for_notif', { headers: { accept: "application/json" }})
      .then(response => response.json())
      .then((data) => {
        // TODO put what we want to display here
        //this.countTarget.innerText = data.bookings.length;
        const notifType = data.notifType;
        const notifMessage = data.notifMessage;
        const notifData = data.notifData;

        let neaCheckedElement = document.getElementById('notif-ea-checked');
        let nnbCheckedElement = document.getElementById('notif-nb-checked');
        let neaCheckedHtml = ""
        let nnbCheckedHtml = ""
        let neaChecked = false;
        let nnbChecked = false;

        if (neaCheckedElement) {
          neaCheckedHtml = neaCheckedElement.innerHTML;
          if (neaCheckedElement.innerText == "true")
            neaChecked = true;
          else
            neaChecked = false;
        }
        if (nnbCheckedElement) {
          nnbCheckedHtml = nnbCheckedElement.innerHTML;
          if (nnbCheckedElement.innerText == "true")
            nnbChecked = true;
          else
            nnbChecked = false
        }

        let bell_html = "";
        if (notifType == 'emptyActivities' && !neaChecked) {
          bell_html = "<i style=\"color: Tomato;\" class=\"far fa-bell text-gray-200 text-2xl text-left\"></i>"
        } else if (notifType == 'newBooking' && !nnbChecked) {
          bell_html = "<i style=\"color: Dodgerblue;\" class=\"far fa-bell text-gray-200 text-2xl text-left\"></i>"
        } else {
          bell_html = "<i class=\"far fa-bell text-gray-200 text-2xl text-left\"></i>"
        }
        bell_html = bell_html + "<div id=\"notif-ea-checked\" hidden>" + `${neaCheckedElement.innerText}` + "</div> \
                                 <div id=\"notif-nb-checked\" hidden>" + `${nnbCheckedElement.innerText}` + "</div> \
                                 <div id=\"notif-message\" hidden>" + `${notifMessage}` + "</div> \
                                 <div id=\"notif-type\" hidden>" + `${notifType}` + "</div> \
                                 <div id=\"notif-data\" hidden>" + `${notifData}` + "</div>";
        this.countTarget.innerHTML = bell_html;
      });
  }
}
