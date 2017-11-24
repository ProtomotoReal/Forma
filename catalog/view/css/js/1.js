$('.whiteline nav a').hover(function(){
	$('.dropdown>*').css('display', 'none');
	var id = $(this).attr('data-target');
	$('[id='+id+']').css('display', 'block');
});
$('header').mouseleave(function(){
	$('.dropdown>*').css('display', 'none');
});
$('.icon-basket').click(function(){
	$(this).toggleClass('open');
	$('.basket-dd').slideToggle();
});
//$('#carousel1').bxSlider({
//	pager: false,
//	auto: true,
//	autoHover: true,
//	minSlides: 1,
//	maxSlides: 3,
//	slideMargin: 30,
//	slideWidth: 370,
//	nextText: '&#9002;',
//	prevText:'&#9001;',
//});
//$('[id^="slider"]').bxSlider({
//	pager: false,
//	auto: true,
//	autoHover: true,
//	nextText:'&#9002',
//	prevText:'&#9001;'
//});
	