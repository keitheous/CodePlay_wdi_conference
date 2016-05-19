$(document).on('page:load', function(){

  var rows = ["A", "B", "C", "D", "E"];
  var seats = 10;
  var priceNormal = 75.00;

  // Add number of rows of seats.
  for (var i=0; i<rows.length; i++) {
    var row = 'row' + rows[i];
    $('#seating-plan').append('<div class="row ' + row + '"></div>');
  }

  // Add seats to row with a class 'seat'.
  $('.row').each(function(index, value) {
    for (var j=0; j<seats; j++) {
      var seatNo = ($(this).attr('class')[7]) + (j+1);
      $('<div class="seat" data-seat="' + seatNo + '"></div>').html(seatNo).appendTo(this);
    };
  })
  $('.rowA').children().addClass('premium-seat');

  // Seat Selection
  $('.seat').click(function() {
    if ($(this).hasClass('selected')) {
      $(this).removeClass('selected');
    } else {
      $(this).addClass('selected');
      $(this).parent().attr('class')[7] + $(this).attr('class')[5]+ $(this).attr('class')[6];
    };
    console.log(calculateTotal());
    if ($('.seat.selected').length > 0) {
      $('#display-breakdown').html($('.seat.selected').length + ' x ' + '$' + priceNormal + ' = $' + calculateTotal());
    } else if ($('.seat.selected').length == 0) {
      $('#display-breakdown').html('');
    }
  })

  // Function for calculating total charges
  function calculateTotal() {
    var total = $('.seat.selected').length * priceNormal;
    $('.amount').html(total);
    return total;
  }

})
