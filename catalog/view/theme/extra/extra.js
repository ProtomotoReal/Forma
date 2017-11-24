
function listing_addtocart(product_id, el){

    //var color_option_id = 230;
    //var size_option_id = 231;

    var errors = false;

    var options = [];
    //найдем доступные цвета
    var color = false;
    var colors_count = $(el).closest('.right-block').find('.options-color').find('input').length;
    if (colors_count){
        var color = $('input[name="color_' + product_id + '"]:checked').val();
        if (color == undefined){
            alert('Необходимо выбрать цвет');
            errors = true;
        }else{
            var color_option_id = $('input[name="color_' + product_id + '"]:checked').data('productoptionid');
            options[color_option_id] = color;
        }

    }

    //найдем доступные размеры
    var size = false;
    var size_count = $(el).closest('.right-block').find('.options-size').find('select').length;
    if (size_count){
        var size = $('select[name="size_' + product_id + '"]').val();
        if (size == 0){
            alert('Необходимо выбрать размер');
            errors = true;
        }else{
            var size_option_id = $('select[name="size_' + product_id + '"]').data('productoptionid');
            options[size_option_id] = size;
        }

    }

    if (errors){
        return ;
    }

    var qty = 1;
    qty = $(el).closest('.big-button').find('input[name="quantity"]').val();

    cart.add(product_id, qty, options);
}

function extra_live_list_options(){
    //обводит выбранный цвет рамкой в списке товаров
    $('.product-item-container.expanded .options-color label').click(function(){
        $(this).parent().find('label').removeClass('active');
        $(this).addClass('active');
    });

    //изменяет счетчик вне expanded блока
    $('.product-item-container.expanded .product_quantity_up, .product-item-container.expanded .product_quantity_down').click(function(){

        $(this).closest('.product-layout').find('.product-item-container:not(.expanded) input[name="quantity"]').val(

            $(this).parent().find('input[name="quantity"]').val()

        );
    });
}

function validatePaymentMethods(){
    if ($('input[name="shipping_method"]:checked').val() == "pickup.pickup"){
        //enable

        var el = $('input[name="payment_method"][value="free_checkout"]');
        el.prop("disabled",false);
        el.parent().removeClass('disabled');

    }else{

        var el = $('input[name="payment_method"][value="free_checkout"]');
        el.prop("disabled",true);
        el.parent().addClass('disabled');

        if ($('input[name="payment_method"][value="free_checkout"]:checked').length){
            $('input[name="payment_method"]').each(function(i,el){

               if (!$(el).prop('disabled')){
                   $(el).prop('checked', true);
               }
            });
        }
    }
}


$(document).ready(function(){

    extra_live_list_options();
    $('input[name="shipping_method"]').change(function(){
       validatePaymentMethods();
    });

    $('.banners a').attr('title', '');

    $(document).scroll(function() {

        if (($(document).scrollTop() > 300) && ($(window).innerWidth() > 790)) {
            $('ul.megamenu').addClass('fixed-menu');
        } else {
            $('ul.megamenu').removeClass('fixed-menu');
        }


        if (($(document).scrollTop() > 100 ) && ($(window).innerWidth() < 790)) {
            $('header.typeheader-3 .megamenu-style-dev .navbar-default .horizontal .navbar-header').addClass('fixed-menu');
        } else {
            $('header.typeheader-3 .megamenu-style-dev .navbar-default .horizontal .navbar-header').removeClass('fixed-menu');
        }


    });

    //смена картинок при выборе опции
    $('.option_image input[type="radio"]').change(function(){
        var option_value_id = $(this).val();
        if (!option_value_id){
            return;
        }
        var cntImages = $('li.owl2-item[data-image-option-' + option_value_id + '="' + option_value_id + '"]').length;
        if (!cntImages){
            return;
        }
        $('li.owl2-item').hide();
        $('li.owl2-item[data-image-option-' + option_value_id + '="' + option_value_id + '"]').show();
        $('li.owl2-item[data-image-option-' + option_value_id + '="' + option_value_id + '"] a').trigger('click');

    });

    $('.bottom-text').append(
        '<div class="text-spoiler"></div>'
    );

    $('.bottom-text .text-spoiler').click(function() {
        $('.bottom-text .text-spoiler').hide();
        var minheight = $('.bottom-text').css('height');
        $('.bottom-text').css('height', 'auto');
        var height = $('.bottom-text').css('height');
        $('.bottom-text').css('height', minheight);
        $('.bottom-text').animate({
            height: height
        });
    });

});