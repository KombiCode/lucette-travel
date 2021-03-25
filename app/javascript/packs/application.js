// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.


require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")
require("plugins/hammer")
// = require touch-emulator

// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)

import "stylesheets/tailwind"
import "stylesheets/application"
import "controllers"
import 'swiper/swiper-bundle.min.css'
import 'stylesheets/googlefont'
import 'stylesheets/burger_menu'
import 'stylesheets/style_tinder'

// CSS
import 'mapbox-gl/dist/mapbox-gl.css';
import '@mapbox/mapbox-gl-geocoder/dist/mapbox-gl-geocoder';
// internal imports
import { initMapbox, showActivity } from '../plugins/init_mapbox';
import { initAutocomplete } from '../plugins/init_autocomplete';
import { initBurger } from '../plugins/init_burger';
import { initNotifMessage } from "../plugins/init_notifmessage";
import { initTinder } from '../plugins/init_tinder';
import { initSwiper } from '../plugins/init_swiper';

document.addEventListener('turbolinks:load', () => {
  initBurger();
  initMapbox();
  initAutocomplete();
  initTinder(showActivity);
  initNotifMessage();
  initSwiper();
})
