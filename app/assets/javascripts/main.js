$(document).ready(function(){

smoothScroll.init();

	$(window).scroll(function() {

		var scrollLength = $(this).scrollTop();
    console.log(scrollLength);

		if (scrollLength > 800) {
			$('.speakers-card').each(function(index) {
				setTimeout(function() {
					$('.speakers-card').eq(index).addClass('appear');
				}, 200 * (index + 1));
			});
		}

	});

});
