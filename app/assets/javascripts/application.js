//= require jquery
//= require bootstrap-sprockets
//= require jquery_ujs
//= require turbolinks
//= require_tree .

var ready;
ready = function() {
  setupBase();
  setupShowtimes();
  setupMovies();
  setupOrders();
};

$(document).ready(ready);
$(document).on('page:load', ready);

function setupShowtimes() {
  if ($('#verifyAge').length > 0) {
    showVerifyAgeModal();
  }
}

function setupMovies() {
  if ($('.movie-thumbnail').length > 0) {
    fadeInMovieTiles();
    displayShowtimes();
    submitShowtimeDateForm();
  }
}

function setupOrders() {
  if ($('.orders-table').length > 0) {
    showOrdersByMovies();
  }
}

function setupBase() {
  if ($('#flash').length > 0) {
    setTimeout(function() {
      $('#flash').fadeOut();
    }, 3000);
  }
}
