/* Add Custom Code Jquery
 ========================================================*/
$(document).ready(function(){
	// Fix hover on IOS
	$('body').bind('touchstart', function() {}); 
	
	// Messenger posmotion
	$( "#close-posmotion-header" ).click(function() {
		$('.promotion-top').toggleClass('hidden-promotion');
		$('body').toggleClass('hidden-promotion-body');

		if($(".promotion-top").hasClass("hidden-promotion")){
			$.cookie("open", 0);
			
		} else{
			$.cookie("open", 1);
		}

	});
	
	if($.cookie("open") == 0){
		$('.promotion-top').addClass('hidden-promotion');
		$('body').addClass('hidden-promotion-body');
	}

	// Messenger Top Link
	$('.list-msg').owlCarousel2({
		pagination: false,
		center: false,
		nav: false,
		dots: false,
		loop: true,
		slideBy: 1,
		autoplay: true,
		margin: 30,
		autoplayTimeout: 4500,
		autoplayHoverPause: true,
		autoplaySpeed: 1200,
		startPosition: 0, 
		responsive:{
			0:{
				items:1
			},
			480:{
				items:1
			},
			768:{
				items:1
			},
			1200:{
				items:1
			}
		}
	});

	// Slider Brands Home 1 - destino
	jQuery(document).ready(function($) {
	    var slider1 = $(".slider-brand-layout1 .slider-brand");
	    slider1.owlCarousel2({    
	    margin:30,
	    nav:true,
	    loop:true,
	    dots: false,
	    navText: ['',''],
	    responsive:{
	            0:{
	                items:2
	            },
	            480:{
	                items:2
	            },
	            768:{
	                items:4
	            },
	            992:{
	                items:5
	            },
	            1200:{
	                items:6
	            },
	        },
	    })
	});

	// Slider Brands Home 2 - destino
	jQuery(document).ready(function($) {
	    var slider2 = $(".slider-brand-layout2 .slider-brand");
	    slider2.owlCarousel2({    
	    margin:30,
	    nav:true,
	    loop:true,
	    dots: false,
	    navText: ['',''],
	    responsive:{
	            0:{
	                items:2
	            },
	            480:{
	                items:2
	            },
	            768:{
	                items:3
	            },
	            992:{
	                items:4
	            },
	            1200:{
	                items:5
	            },
	        },
	    })
	});

	// Testimonials layout 2 - destino
    jQuery(document).ready(function($) {
      var owl_testimonial = $(".slider-clients-say-h2");
      owl_testimonial.owlCarousel2({
        
        responsive:{
          0:{
            items:1
          },
          480:{
            items:1
          },
          768:{
            items:1
          },
          992:{
            items:1
          },
          1200:{
            items:1
          }
        },

        autoplay:false,
        loop:true,
        nav : false, // Show next and prev buttons
        dots: true,
        navText: ['',''],
        autoplaySpeed : 500,
        navSpeed : 500,
        dotsSpeed : 500,
        autoplayHoverPause: true,
        margin:0,

      });   
    }); 
	

    // Slider Brands Home 3 - destino
	jQuery(document).ready(function($) {
	    var slider3 = $(".slider-brand-layout3 .slider-brand");
	    slider3.owlCarousel2({    
	    margin:30,
	    nav:true,
	    loop:true,
	    dots: false,
	    navText: ['',''],
	    responsive:{
	            0:{
	                items:1
	            },
	            480:{
	                items:2
	            },
	            768:{
	                items:3
	            },
	            992:{
	                items:5
	            },
	            1200:{
	                items:6
	            },
	        },
	    })
	});

	// Slider Brands Home 4 - destino
	jQuery(document).ready(function($) {
	    var slider4 = $(".slider-brand-layout4 .slider-brand");
	    slider4.owlCarousel2({    
	    margin:30,
	    nav:true,
	    loop:true,
	    dots: false,
	    navText: ['',''],
	    responsive:{
	            0:{
	                items:1
	            },
	            480:{
	                items:2
	            },
	            768:{
	                items:3
	            },
	            992:{
	                items:4
	            },
	            1200:{
	                items:5
	            },
	        },
	    })
	});

	// Slider testimonials home 6 - destino
	jQuery(document).ready(function($) {
      var owl_testimonial6 = $(".testimonials-id6 #testimonial-slider");
      owl_testimonial6.owlCarousel2({
        
        responsive:{
          0:{
            items:1
          },
          480:{
            items:1
          },
          768:{
            items:1
          },
          992:{
            items:1
          },
          1200:{
            items:1
          }
        },

        autoplay:false,
        loop:true,
        nav : false, // Show next and prev buttons
        dots: true,
        navText: ['',''],
        autoplaySpeed : 500,
        navSpeed : 500,
        dotsSpeed : 500,
        autoplayHoverPause: true,
        margin:0,
        animateIn: 'fadeIn',
		animateOut: 'fadeOut',

      });   
    }); 

    // Slider Brands Home 6 - destino
	jQuery(document).ready(function($) {
	    var slider1 = $(".slider-brand-layout6 .slider-brand");
	    slider1.owlCarousel2({    
	    margin:30,
	    nav:false,
	    loop:true,
	    dots: false,
	    navText: ['',''],
	    responsive:{
	            0:{
	                items:1
	            },
	            480:{
	                items:2
	            },
	            768:{
	                items:4
	            },
	            992:{
	                items:6
	            },
	            1200:{
	                items:7
	            },
	        },
	    })
	});


	// Slider Brands Home 7 - destino
	jQuery(document).ready(function($) {
	    var slider7 = $(".slider-brand-layout7 .slider-brand");
	    slider7.owlCarousel2({    
	    margin:0,
	    nav:false,
	    loop:true,
	    dots: false,
	    navText: ['',''],
	    responsive:{
	            0:{
	                items:1
	            },
	            480:{
	                items:2
	            },
	            768:{
	                items:5
	            },
	            992:{
	                items:7
	            },
	            1200:{
	                items:8
	            },
	        },
	    })
	});

	// Slider Brands Home 8 - destino
	jQuery(document).ready(function($) {
	    var slider3 = $(".slider-brand-layout8 .slider-brand");
	    slider3.owlCarousel2({    
	    margin:30,
	    nav:false,
	    loop:false,
	    dots: false,
	    navText: ['',''],
	    responsive:{
	            0:{
	                items:1
	            },
	            480:{
	                items:2
	            },
	            768:{
	                items:3
	            },
	            992:{
	                items:5
	            },
	            1200:{
	                items:6
	            },
	        },
	    })
	});
	// =========================================


	// click header search header 
	jQuery(document).ready(function($){
		$( ".search-header-w .icon-search" ).click(function() {
		$('#sosearchpro .search').slideToggle(200);
		$(this).toggleClass('active');
		});
	});

	
	// click header show - header 6
	jQuery(document).ready(function($){
		$( ".typeheader-6 #btn-header-sidebar" ).click(function() {
			$('.typeheader-6').toggleClass('header-active');		
		});
	})
});
