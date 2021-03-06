import Typed from 'typed.js';

function loadDynamicBannerText() {
  if (document.getElementById('banner-typed-text')) {
    new Typed('#banner-typed-text', {
      strings: ["Come drink with us"],
      typeSpeed: 50,
      loop: true
    });
  }
}

export { loadDynamicBannerText };
