let navToggle;
let nav;

const doToggle = (e) => {
  e.preventDefault();
  navToggle.classList.toggle('expanded');
  nav.classList.toggle('expanded');
}

const initBurger = () => {
  navToggle = document.querySelector('.burger-toggle')
  nav       = document.querySelector('.burger')

  if (navToggle) {
    navToggle.addEventListener('click', doToggle)
    nav.addEventListener('click', doToggle)
  }
};


export { initBurger };
