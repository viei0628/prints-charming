import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Change your life get a print out now"],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };



