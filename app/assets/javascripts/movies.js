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
