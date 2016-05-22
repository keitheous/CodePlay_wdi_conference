$(document).ready(function(){

smoothScroll.init();

	//transitions
	$(window).scroll(function() {

		var scrollLength = $(this).scrollTop();
    console.log(scrollLength);

		if (scrollLength > 80) {
			$('.about-title').addClass('appear');
			$('.about-content').addClass('appear-content');

		}

		if (scrollLength > 500) {
			$('.address-map-container').addClass('appear');
		}

		if (scrollLength > 760) {
			$('.speaker-title').addClass('appear');
		}

		if (scrollLength > 850) {
			$('.speakers-card').each(function(index) {
				setTimeout(function() {
					$('.speakers-card').eq(index).addClass('appear');
				}, 200 * (index + 1));
			});
		}

		if (scrollLength > 1150) {
			$('.schedule-title').addClass('appear-title');

			$('.talk-card').each(function(index) {
				setTimeout(function() {
					$('.talk-card').eq(index).addClass('appear-card');
				}, 200 * (index + 1));
			});

			$('.vertical').each(function(index) {
				setTimeout(function() {
					$('.vertical').eq(index).addClass('appear-title');
				}, 200 * (index + 1));
			});
		}

		if (scrollLength > 1850) {
			$('.sponsors-title').addClass('appear-title');

			$('.sponsors-content').addClass('appear-sponsors');

			$('.sponsors-img').each(function(index) {
				setTimeout(function() {
					$('.sponsors-img').eq(index).addClass('appear-sponsors');
				}, 200 * (index + 1));
			});
		}


	});

});
