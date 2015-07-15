//= require jquery
//= require bootstrap-sprockets
//= require jquery_ujs
//= require turbolinks
//= require_tree .

var ready;
ready = function() {
  setupBase();
  setupShowtimes();
};

$(document).ready(ready);
$(document).on('page:load', ready);

function setupShowtimes() {
  if ($('#verifyAge').length > 0) {
    showVerifyAgeModal();
  }
}

function setupBase() {
  if ($('#flash').length > 0) {
    setTimeout(function() {
      $('#flash').fadeOut();
    }, 4000);
  }
}
