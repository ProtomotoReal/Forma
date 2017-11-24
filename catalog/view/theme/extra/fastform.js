function adaptate(){

}

function smoothscrollTo(target){
    target = $(target);
    if (target.length) {
        $('html,body').animate({
            scrollTop: target.offset().top
        }, 1000);
        return false;
    }
}
$(document).ready(function(){
    $(window).resize(function(){
        adaptate();
    });
	
	
	$('#bgmodal').click(function(){
		$('#popup').fadeOut();
		$('#bgmodal').fadeOut();
	});	
	
	$('#popup').click(function(ev){
		$('#popup').fadeOut();
	});
	
	$('#popup .popup_callback').click(function(ev){
		ev.stopPropagation();
	});
	
	
	$('#bgmodal_visible').click(function(){
		$('#popup_visible').fadeOut();
		$('#bgmodal_visible').fadeOut();
	});


    adaptate();

});




function openbox(popup_form, message, title) {
    var id = 'popup';
    var popup_form = popup_form || '.popup_form_normal';
    var div = document.getElementById(id);

    $('#'+id + ' > div').hide();

    var popup_div = $(popup_form);
    $(popup_div).show();


    if (message){
        $('#call-message').html(message);
    }else{
        $('#call-message').html('');
    }

    if (popup_form == '#popup_form_info'){
        if (title){
            $(popup_form+' .title').html(title);
        }else{
            $(popup_form+' .title').html(' ');
        }
    }

    if(div.style.display == 'block') {
        $(div).fadeOut();
        $(div).removeClass('absolute');
        $('body').css('min-height', 'auto');
    }
    else {
        $(div).fadeIn();
        fixModalPosition(popup_form, div);
    }
}
function fixModalPosition(form, layer) {
    var wh = $(window).height();
    var mh = $(form).outerHeight();

    if (mh > wh){
        var marginTop = ( 20 );
        $(form).css('position', 'absolute')
            .css({'margin-top': $(document).scrollTop() + marginTop, 'top': 0});

        $('body').css('min-height', mh+40);
        $(layer).addClass('absolute');
        $(layer).css('height', Math.max(document.body.clientHeight, mh+40, wh));
    }else{
        var marginTop = ( wh - mh)/2;
        $(form).css({'position': 'fixed', 'margin-top': '-300px', 'top': '50%'});
        $(layer).css('height', '100%');
    }
    //$(form).css('margin-top', $(document).scrollTop() + marginTop);
}

$(function(){
    $('#popup').click(function(el){
        if ($(el.target).attr('id') == 'popup'){
            $('#popup').fadeOut();
            $('#popup').removeClass('absolute');
            $('body').css('min-height', 'auto');
        }
    });


    $('.callback').click(function(){
        openbox('#popup_callback');
        return false;
    });

//    $('.phone-input').mask('(000) 000-00-00');
});

