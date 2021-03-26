import Swal from 'sweetalert2'


const displayMessage = (e) => {
    e.preventDefault();
    const notifMsgElement = document.getElementById('notif-message');
    const notifTypeElement = document.getElementById('notif-type');
    if (notifMsgElement) {
      const message = notifMsgElement.innerText;
      const type = notifTypeElement.innerText;
      if (message != "") {
        let neaCheckedElement = document.getElementById('notif-ea-checked');
        let nnbCheckedElement = document.getElementById('notif-nb-checked');
        let neaChecked = neaCheckedElement.innerText == "true";
        let nnbChecked = nnbCheckedElement.innerText == "true";
        if (type == 'newBooking' && !nnbChecked) {  
            Swal.fire({
                title: 'Lucette message!',
                text: message,
                icon: 'info',
                confirmButtonText: 'Ok'
            })
            const nnbCheckedElement = document.getElementById('notif-nb-checked');
            if (nnbCheckedElement) {
              nnbCheckedElement.innerHTML = "<div id=\"notif-nb-checked\" hidden>true</div>";
            }
        } else if (type == 'emptyActivities' && !neaChecked) {
            Swal.fire({
                title: 'Lucette message!',
                text: message,
                icon: 'warning',
                confirmButtonText: 'Ok'
            })
            const neaCheckedElement = document.getElementById('notif-ea-checked');
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

  