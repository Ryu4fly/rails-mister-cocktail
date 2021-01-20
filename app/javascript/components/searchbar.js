import Typed from 'typed.js';

const emptyPlaceholder = () => {
  const search = document.getElementById('search');
  search.addEventListener('click', (event) => {
    event.currentTarget.setAttribute('placeholder', '')
  });
}

const loadDynamicBannerText = () => {
  new Typed('#search', {
    strings: ['SEARCH YOUR DRINK.', 'A MARTINI. SHAKEN, NOT STIRRED', 'THAT\'S, UM, STIRRED NOT SHAKEN'],
    typeSpeed: 20,
    backSpeed: 20,
    attr: 'placeholder',
    bindInputFocusEvents: true,
    loop: true
  });
}

export { loadDynamicBannerText , emptyPlaceholder };
