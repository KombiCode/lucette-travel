let navToggle;
let nav;
let blackScreen;
let hr;

const doToggle = (e) => {
  e.preventDefault();
  navToggle.classList.toggle('expanded');
  nav.classList.toggle('expanded');
  blackScreen.classList.toggle('hidden');
  hr.classList.toggle('hidden');
}

const initBurger = () => {
  navToggle   = document.querySelector('.burger-toggle')
  nav         = document.querySelector('.burger')
  blackScreen = document.querySelector('.body-black-toggle')
  hr = document.querySelector('#hide')

  if (navToggle) {
    navToggle.addEventListener('click', doToggle);
    ;
  }
};

export { initBurger };
