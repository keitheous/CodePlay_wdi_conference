$(document).ready(function() {

  $('.apply-btn').on('click',function(event) {
    event.preventDefault();
    // $('.application-form').css({"display":"block","transition":'1.5s'});
    $('#edit-page').hide();
    $('#speaker-form').show();

  });

  $('.close-btn').on('click',function(event) {
    event.preventDefault();
    $('#edit-page').show();
    $('#speaker-form').hide();


  });

});
