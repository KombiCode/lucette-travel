
import Swiper from 'swiper';
import SwiperCore, { Navigation } from 'swiper/core';


const initSwiper = () => {
  SwiperCore.use([Navigation]);
  const swiper = new Swiper('.swiper-container', {
    // minHeight: "100vhs",
    autoHeight: true,
    navigation: {
      nextEl: '.swiper-button-next',
      prevEl: '.swiper-button-prev',
    },
  });
}

export { initSwiper };
