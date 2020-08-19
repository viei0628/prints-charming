import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Change your life", "Get a print out now"],
    typeSpeed: 50,
    backSpeed: 20,
    loop: true
  });
}

export { loadDynamicBannerText };



