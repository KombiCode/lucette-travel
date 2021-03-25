let navToggle;
let nav;
let blackScreen;
let footer;
// let hr;

const doToggle = (e) => {
  e.preventDefault();
  navToggle.classList.toggle('expanded');
  nav.classList.toggle('expanded');
  blackScreen.classList.toggle('hidden');
  footer.classList.toggle('footer-move-bot');
}

const initBurger = () => {
  navToggle   = document.querySelector('.burger-toggle')
  nav         = document.querySelector('.burger')
  blackScreen = document.querySelector('.body-black-toggle')
  footer = document.querySelector('#footer')

  if (navToggle) {
    navToggle.addEventListener('click', doToggle);
    ;
  }
};

export { initBurger };
