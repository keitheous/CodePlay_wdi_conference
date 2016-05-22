$(document).ready(function(){

smoothScroll.init();

	//slide in speaker images
	$(window).scroll(function() {

		var scrollLength = $(this).scrollTop();
    console.log(scrollLength);

		if (scrollLength > 300) {
			$('.address-map-container').addClass('appear');
		}

		if (scrollLength > 850) {
			$('.speakers-card').each(function(index) {
				setTimeout(function() {
					$('.speakers-card').eq(index).addClass('appear');
				}, 200 * (index + 1));
			});
		}

	});

});
