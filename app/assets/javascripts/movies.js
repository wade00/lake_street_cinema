function displayShowtimes() {
  $('.movie-thumbnail').hover(function() {
    id = $(this).attr('id');
    $('#' + id + '-title').slideUp();
    $('#' + id + '-showtimes').fadeIn();
  }, function() {
    $('#' + id + '-title').slideDown();
    $('#' + id + '-showtimes').fadeOut();
  });
}

function fadeInMovieTiles() {
  setTimeout(function() {
    $('.movie-thumbnail').fadeIn(1000);
  }, 500);
}

function submitShowtimeDateForm() {
  $('#select-showtime-date').change(function() {
    $('#select-showtime-date-form').submit();
  });
}
