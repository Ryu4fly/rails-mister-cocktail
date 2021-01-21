import Typed from 'typed.js';

const searchPlaceholder = () => {
  const search = document.getElementById('search');
  if (search) {
    search.addEventListener('click', (event) => {
      event.currentTarget.setAttribute('placeholder', '')
    });
  }
}

const loadDynamicBannerText = () => {
  if (document.getElementById('search')) {
    new Typed('#search', {
      strings: ['SEARCH YOUR DRINK.', 'A MARTINI. SHAKEN, NOT STIRRED', 'THAT\'S, UM, STIRRED NOT SHAKEN'],
      typeSpeed: 20,
      backSpeed: 20,
      attr: 'placeholder',
      bindInputFocusEvents: true,
      loop: true
    });
  }
}

const namePlaceholder = () => {
  const search = document.getElementById('name-input-bar');
  if (search) {
    search.addEventListener('click', (event) => {
      event.currentTarget.setAttribute('placeholder', '')
    });
  }
}

const nameGenerator = () => {
  if (document.getElementById('name-input-bar')) {
    new Typed('#name-input-bar', {
      strings: ['Daniel Craig (2006–present)', 'Pierce Brosnan (1995–2002)', 'Timothy Dalton (1987–1989)', 'Roger Moore (1973–1985)','George Lazenby (1969)','David Niven (1967)', 'Sean Connery (1962–1967, 1971, 1983)'],
      typeSpeed: 20,
      backSpeed: 20,
      attr: 'placeholder',
      bindInputFocusEvents: true,
      loop: true
    });
  }
}

export { loadDynamicBannerText , searchPlaceholder, nameGenerator, namePlaceholder };

