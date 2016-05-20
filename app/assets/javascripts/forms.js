$(document).ready(function(){

  $('#login-icon').on('click', function() {
    if ($('#both-forms').is(":hidden")) {
      $('#login-icon').empty().html('<i class="fa fa-close fa-2x" aria-hidden="true"></i>')
      $('#hamburger').find('i').hide();
      $('#both-forms').slideDown("fast");
      $('#overlay').fadeOut(100);
    } else {
      $('#hamburger').find('i').show();
      $('#login-icon').empty().html('Log In');
      $('#both-forms').slideUp("fast");
      $('#overlay').fadeIn(500);
    }
  });

  $('#signup-underline').on('click', function() {
    $('#login-form').hide();
    $('#signup-form').show();
  });

  $('#login-underline').on('click', function() {
    $('#login-form').show();
    $('#signup-form').hide();
  });

  $('#register-btn').on('click', function() {
    console.log('yes');
    $('#show-menu').slideUp("fast");
    $('#login-icon').trigger("click");
    $('#login-form').hide();
    $('#signup-form').show();
  })




});
