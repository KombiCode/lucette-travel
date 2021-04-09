
import Swiper from 'swiper';
import SwiperCore, { Navigation } from 'swiper/core';


const initSwiper = () => {
  let initialSlideIndex = 0;
  const slideIndexElement = document.querySelector('#slideindex-for-current-trip')
  if (slideIndexElement) {
    initialSlideIndex = parseInt(slideIndexElement.innerText);
    if (isNaN(initialSlideIndex)) initialSlideIndex = 0;
  }

  SwiperCore.use([Navigation]);
  const swiper = new Swiper('.swiper-container', {
    // minHeight: "100vhs",
    initialSlide: initialSlideIndex,
    autoHeight: true,
    navigation: {
      nextEl: '.swiper-button-next',
      prevEl: '.swiper-button-prev',
    },
  });
}

export { initSwiper };
