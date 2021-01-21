import $ from 'jquery';
import 'select2';

const initSelect2 = () => {
  $(".ingredients").select2({
    theme: "classic"
  });
};

export { initSelect2 };
