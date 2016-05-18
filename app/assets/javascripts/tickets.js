$(document).ready(function() {

  var rows = ["A", "B", "C", "D", "E"];
  var seats = 10;

  // Add number of rows of seats.
  for (var i=0; i<rows.length; i++) {
    var row = 'row' + rows[i];
    $('#seating-plan').append('<div class="row ' + row + '"></div>');
  }

  // Add seats to row with a class 'seat'.
  $('.row').each(function(index, value) {
    for (var j=0; j<seats; j++) {
      var seat = j+1;
      $('<div class="seat ' + seat + '"></div>').html(($(this).attr('class')[7])+seat).appendTo(this);
    };
  })

  $('.seat').click(function() {
    console.log($(this).parent().attr('class')[7]);
    if ($(this).hasClass('selected')) {
      $(this).removeClass('selected');
      $(this).html('');
    } else {
      $(this).addClass('selected');
      var seatNo = $(this).parent().attr('class')[7] + $(this).attr('class')[5]+ $(this).attr('class')[6];
      $(this).html(seatNo);
    };
  })

})
