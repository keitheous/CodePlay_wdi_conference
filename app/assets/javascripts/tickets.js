$(document).ready(function() {

  var rows = ["A", "B", "C", "D", "E"];
  var seats = 10;
  var pricePremium = 125.00;
  var priceGeneral = 75.00;

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

    var selectedSeats = getSelectedSeats();
    $('.seats-list').val(selectedSeats);

    // When a ticket is selected:
    if ($('.seat.selected').length > 0) {

      // Append new record
      var quantity = 1;
      var seatNo = $(this).text()
      var ticketType = '';
      if (seatNo[0] === "A") {
        ticketType = "Premium"
      } else {
        ticketType = "General"
      }
      var price = 0;
      if (ticketType === "Premium") {
        var price = pricePremium.toFixed(2);
      } else {
        var price = priceGeneral.toFixed(2);
      }

      var tr = $('<tr>').append($('<td>').html(quantity)).append($('<td>').html(seatNo)).append($('<td>').html(ticketType)).append($('<td>').html('$' + price));
      $("#tickets-breakdown").find('tbody').append(tr);

      $('#display-total').html('Total: $' + calculateTotal().toFixed(2));

      // Calculate total priceGeneral
      // $('#display-breakdown').html($('.seat.selected').length + ' x ' + '$' + priceGeneral + ' = $' + calculateTotal());

    } else if ($('.seat.selected').length == 0) {
      $('#display-breakdown').html('');
    }

  })

  // Function for calculating total charges
  function calculateTotal() {
    var total = 0;
    $('.selected').each(function(index, value) {
      var getSeat = this.getAttribute('data-seat')[0];
      if (getSeat === "A") {
        total = total + pricePremium;
      } else {
        total = total + priceGeneral;
      }
    })
    return total;
  }

  function getSelectedSeats() {
    var seatsArr = [];
    $('.selected').each(function(index, value) {
      var seatNum = this.getAttribute('data-seat');
      seatsArr.push(seatNum);
    })
    return seatsArr;
  }

})
