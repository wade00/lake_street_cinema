function displayShowtimes() {
  $('.movie-thumbnail').mouseover(function() {
    id = $(this).attr('id');
    $('#' + id + '-title').slideUp();
    $('#' + id + '-showtimes').fadeIn();
  });

  $('.movie-thumbnail').mouseout(function() {
    id = $(this).attr('id');
    $('#' + id + '-title').slideDown();
    $('#' + id + '-showtimes').fadeOut();
  });
}
