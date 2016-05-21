$(document).ready(function(){


  $('#hamburger').on('click', function() {

    if ($('#show-menu').is(":hidden")) {
      $(this).find('i').removeClass('fa-bars').addClass('fa-close');
      $('#login-icon').hide();
      $('#show-menu').slideDown("fast");
      $('#overlay').fadeOut(100);
    } else {
    $(this).find('i').addClass('fa-bars').removeClass('fa-close');
      $('#login-icon').show();
      $('#show-menu').slideUp("fast");
      $('#overlay').fadeIn(500);
    }

  });

  $('.circle-div').on('click', function() {
   $('#hamburger').find('i').removeClass('fa-close').addClass('fa-bars');
   $('#show-menu').fadeOut(100);
   $('#overlay').show();
   $('#login-icon').show();
 })








});
