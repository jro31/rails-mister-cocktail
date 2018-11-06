import Typed from 'typed.js';

function loadDynamicBannerText() {
  new Typed('#banner-typed-text', {
    strings: ["Come drink with us"],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };
