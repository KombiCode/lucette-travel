let navToggle;
let nav;
// let burger_menu;

const doToggle = (e) => {
  e.preventDefault();
  navToggle.classList.toggle('expanded');
  nav.classList.toggle('expanded');
  // burger_menu.classList.toggle('expanded');
}

const initBurger = () => {
  navToggle = document.querySelector('.burger-toggle')
  nav       = document.querySelector('.burger')
  // burger_menu = document.querySelector('.hidden')

  if (navToggle) {
    navToggle.addEventListener('click', doToggle);
    // nav.addEventListener('click', doToggle);
    // burger_menu.classList.remove('hidden')
    ;
  }
};


export { initBurger };
