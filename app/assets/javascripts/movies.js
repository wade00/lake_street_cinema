function displayShowtimes() {
  $('.movie-thumbnail').hover(function() {
    id = $(this).attr('id');
    $('#' + id + '_title').slideUp();
    $('#' + id + '_showtimes').fadeIn();
  }, function() {
    $('#' + id + '_title').slideDown();
    $('#' + id + '_showtimes').fadeOut();
  });
}

function fadeInMovieTiles() {
  $('.movies-container').fadeIn(1000);
}

function submitShowtimeDateForm() {
  $('#select-showtime-date').change(function() {
    $('#select-showtime-date-form').submit();
    $('.movies-container').animate({ opacity: '0' }, 1000);
  });
}
