var init = function() {

var openMenu = function() {
  burger.classList.toggle('burger--active');
  menu.classList.toggle('nav__list--active');
};


var scrollFx = function() {
  var ds = $(document).scrollTop();
  var of = $(window).height() / 4;

  // if the panel is in the viewport, reveal the content, if not, hide it.
  for (var i = 0; i < $('.panel').length; i++) {
    if ($('.panel').eq(i).offset().top < ds+of) {
     $('.panel')
       .eq(i)
       .find('.panel__content')
       .addClass('panel__content--active');
    } else {
      $('.panel')
        .eq(i)
        .find('.panel__content')
        .removeClass('panel__content--active')
    }
  }
};

var scrolly = function(e) {
  e.preventDefault();
  var target = this.hash;
  var $target = $(target);

  $('html, body').stop().animate({
      'scrollTop': $target.offset().top
  }, 300, 'swing', function () {
      window.location.hash = target;
  });
}


  var menu = document.querySelector('.nav__list');
  var burger = document.querySelector('.burger');
  var l = $('.scrolly');
  // reveal content of first panel by default
  $('.panel').eq(0).find('.panel__content').addClass('panel__content--active');

  burger.addEventListener('click', openMenu, false);
  window.addEventListener('scroll', scrollFx, false);
  window.addEventListener('load', scrollFx, false);
  $('a[href^="#"]').on('click',scrolly);
};

$(document).on('ready', init);
