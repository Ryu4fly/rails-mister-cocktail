import Typed from 'typed.js';

const emptyPlaceholder = () => {
  const search = document.getElementById('search');
  search.addEventListener('click', (event) => {
    event.currentTarget.setAttribute('placeholder', '')
  });
}

const loadDynamicBannerText = () => {
  new Typed('#search', {
    strings: ['Some strings without', 'Some HTML', 'Chars'],
    typeSpeed: 5,
    backSpeed: 5,
    attr: 'placeholder',
    bindInputFocusEvents: true,
    loop: true
  });
}

export { loadDynamicBannerText , emptyPlaceholder };
