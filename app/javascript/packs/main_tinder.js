let profiles = document.querySelectorAll('.profile');

const maxAngle = 42;
const smooth = 0.3;
const threshold = 30;
const thresholdMatch = 90;
profiles.forEach(setupDragAndDrop);

function setupDragAndDrop(profile) {
  const hammertime = new Hammer(profile);

  hammertime.on('pan', function (e) {
    profile.classList.remove('profile--back');
    let posX = e.deltaX;
    let posY = Math.max(0, Math.abs(posX * smooth) - threshold);
    let angle = Math.min(Math.abs(e.deltaX * smooth / 100), 1) * maxAngle;
    if (e.deltaX < 0) {
      angle *= -1;
    }

    profile.style.transform = `translateX(${posX}px) translateY(${posY}px) rotate(${angle}deg)`;
    profile.classList.remove('profile--matching');
    profile.classList.remove('profile--nexting');
    if (posX > thresholdMatch) {
      profile.classList.add('profile--matching');
    } else if (posX < -thresholdMatch) {
      profile.classList.add('profile--nexting');
    }

    if (e.isFinal) {
      profile.style.transform = ``;
      if (posX > thresholdMatch) {
        profile.classList.add('profile--match');
        window.open('http://localhost:3000/trips/40/bookings/new');
      } else if (posX < -thresholdMatch) {
        profile.classList.add('profile--next');
      } else {
        profile.classList.add('profile--back');
      }
    }
  });
}
// <div class="card"
  // data-offer-id="<%= offer.id %>"
  // data-user-id="<%= current_user.id %>"
// </div>

  // const fetchingCard = (card) => {
  //   if (card.classList.contains("profile--match")) {
      // Rails.ajax({
      //   url: `offers/${card.dataset.offerId}/bookings`,
      //   type: "POST",
      //   success: function(data) {console.log(data)},
      //   error: function(data) {}
      // })
    // }
  // }
