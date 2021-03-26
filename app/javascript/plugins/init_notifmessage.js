import Swal from 'sweetalert2'


const displayMessage = (e) => {
    e.preventDefault();
    const notifMsgElement = document.getElementById('notif-message');
    const notifTypeElement = document.getElementById('notif-type');
    if (notifMsgElement && notifTypeElement) {
      const message = notifMsgElement.innerText;
      const type = notifTypeElement.innerText;
      if (message != "") {
        const nnbCheckedElement = document.getElementById('notif-nb-checked');
        const neaCheckedElement = document.getElementById('notif-ea-checked');
        const nnbChecked = nnbCheckedElement ? nnbCheckedElement.innerText == "true" : true;
        const neaChecked = neaCheckedElement ? neaCheckedElement.innerText == "true" : true;
        if (type == 'newBooking' && !nnbChecked) {  
            Swal.fire({
                title: 'Lucette message!',
                text: message,
                icon: 'info',
                confirmButtonText: 'Ok'
            })
            if (nnbCheckedElement) {
              fetch('/hide_notif_new_booking')
              nnbCheckedElement.innerHTML = "<div id=\"notif-nb-checked\" hidden>true</div>";
            }
        } else if (type == 'emptyActivities' && !neaChecked) {
            Swal.fire({
                title: 'Lucette message!',
                text: message,
                icon: 'warning',
                confirmButtonText: 'Ok'
            })
            if (neaCheckedElement) {
              fetch('/hide_notif_empty_activities')
              neaCheckedElement.innerHTML = "<div id=\"notif-ea-checked\" hidden>true</div>";
            }
        }
      }
    }
}

const initNotifMessage = () => {
  const notifBellElement = document.getElementById('notifBell');
  if (notifBellElement) {
    notifBellElement.addEventListener('click', displayMessage);
  }
};

export { initNotifMessage };

  