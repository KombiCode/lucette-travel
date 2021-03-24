let navToggle;
let nav;
let blackScreen;
// let burger_menu;

const doToggle = (e) => {
  e.preventDefault();
  navToggle.classList.toggle('expanded');
  nav.classList.toggle('expanded');
  blackScreen.classList.toggle('hidden');
}

const initBurger = () => {
  navToggle = document.querySelector('.burger-toggle')
  nav       = document.querySelector('.burger')
  blackScreen       = document.querySelector('.body-black-toggle')

  if (navToggle) {
    navToggle.addEventListener('click', doToggle);
    ;
  }
};

export { initBurger };
