// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")
require("flatpickr/dist/themes/material_green.css")


// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)


// ----------------------------------------------------
// Note(lewagon): ABOVE IS RAILS DEFAULT CONFIGURATION
// WRITE YOUR OWN JS STARTING FROM HERE 👇
// ----------------------------------------------------

// External imports
import "bootstrap";
import { loadDynamicBannerText } from '../components/banner';
import { initMapbox } from '../plugins/init_mapbox';
import flatpickr from "flatpickr"
import { initSortable } from '../plugins/init_sortable';
import { showDropdownContent} from '../components/navbar';
import { showPrinterPopup } from '../components/card'

// Internal imports, e.g:
// import { initSelect2 } from '../components/init_select2';

document.addEventListener('turbolinks:load', () => {
  // Call your functions here, e.g:
  // initSelect2();
  if(document.getElementById("banner-typed-text")){
    loadDynamicBannerText();
  }
  initMapbox();
  flatpickr("[data-behavior = 'flatpickr' ]", {
    altInput: true,
    enableTime: true,
    dateFormat: "Y-m-d H:i",
    defaultDate: new Date(),
  })

  if(document.getElementById("sort-lists1")){
    initSortable();
  }
  showDropdownContent();
  // hideDropdownOutClick();
  showPrinterPopup();
});


