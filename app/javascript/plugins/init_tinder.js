
const maxAngle = 42;
const smooth = 0.3;
const threshold = 30;
const thresholdMatch = 90;

const activityUpdate = (callbackNewActivity) => {
  const elements = document.querySelectorAll('.profile:not(.profile--next)')
  if (elements.length) {
    const lastElement = elements[elements.length - 1]
    const activityId = lastElement.dataset.activityId
    document.querySelector('#trip_activity_activity_id').value = activityId  // <---- Comprend pas cette ligne. activityId = activityId.value
    callbackNewActivity(activityId)
  }
}

// const   rotateCards = (cards) => cards.forEach(card => card)

const setupDragAndDrop = (profile, callbackNewActivity) =>{
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
        const tinderList = document.querySelector('.wrapper-container-tinder');
        tinderList.classList.add('invisible');
        const tinderForm = document.querySelector('#tinderForm');
        tinderForm.classList.remove('hidden');
      } else if (posX < -thresholdMatch) {
        profile.classList.add('profile--next');
        activityUpdate(callbackNewActivity)
      } else {
        profile.classList.add('profile--back');
      }
    }
  });
}

const initTinder = (callbackNewActivity) => {
  let profiles = document.querySelectorAll('.profile');
  profiles.forEach((profile) => {
    setupDragAndDrop(profile, callbackNewActivity)
  });
  // rotateCards(profiles)
  activityUpdate(callbackNewActivity)
}

export { initTinder }

