import Typed from 'typed.js';

var search = document.querySelector(".searchbar")

var typed4 = new Typed('#typed4', {
  strings: ['Some strings without', 'Some HTML', 'Chars'],
  typeSpeed: 0,
  backSpeed: 0,
  attr: 'placeholder',
  bindInputFocusEvents: true,
  loop: true
});


var typed = new Typed(search, typed4);

export { typed };
