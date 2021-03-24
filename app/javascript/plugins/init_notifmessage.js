import Swal from 'sweetalert2'


const displayMessage = (e) => {
    e.preventDefault();
    const notifMsgElement = document.getElementById('notif-message');
    const notifTypeElement = document.getElementById('notif-type');
    if (notifMsgElement) {
      const message = notifMsgElement.innerText;
      const type = notifTypeElement.innerText;
      if (message != "") {
        if (type == 'newBooking') {  
            Swal.fire({
                title: 'Lucette message!',
                text: message,
                icon: 'info',
                confirmButtonText: 'Ok'
            })
        } else if (type == 'emptyActivities') {
            Swal.fire({
                title: 'Lucette message!',
                text: message,
                icon: 'warning',
                confirmButtonText: 'Ok'
            })
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

  