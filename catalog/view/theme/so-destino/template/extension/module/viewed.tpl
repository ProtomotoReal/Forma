</div>
<div class="bg-gray">

	<div class="container">
<div class="module-viewed container-slider ">

<h3><span><?php echo $heading_title; ?></span></h3>
<div class="row product-layout viewed-items-wrap">
  <?php foreach ($products as $product) { ?>

    <div class="product-thumb transition">
      <div class="image"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" /></a></div>
      <div class="caption">
        <h4><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></h4>
        <?php /*<p><?php echo $product['description']; ?></p>
        <?php if ($product['rating']) { ?>
        <div class="rating">
          <?php for ($i = 1; $i <= 5; $i++) { ?>
          <?php if ($product['rating'] < $i) { ?>
          <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
          <?php } else { ?>
          <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
          <?php } ?>
          <?php } ?>
        </div>

        <?php } ?>
		  */ ?>
        <?php if ($product['price']) { ?>
        <p class="price">
          <?php if (!$product['special']) { ?>
          <?php echo $product['price']; ?>
          <?php } else { ?>
          <span class="price-new"><?php echo $product['special']; ?></span> <span class="price-old"><?php echo $product['price']; ?></span>
          <?php } ?>
          <?php if ($product['tax']) { ?>
			<?php /*<span class="price-tax"><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span> */ ?>
          <?php } ?>
        </p>
        <?php } ?>
      </div>

		<?php /*
      <div class="button-group">
        <button type="button" onclick="cart.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-shopping-cart"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $button_cart; ?></span></button>
        <button type="button" data-toggle="tooltip" title="<?php echo $button_wishlist; ?>" onclick="wishlist.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-heart"></i></button>
        <button type="button" data-toggle="tooltip" title="<?php echo $button_compare; ?>" onclick="compare.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-exchange"></i></button>
      </div>
	  */ ?>
    </div>
  <?php } ?>
</div>

<script>// <![CDATA[
	jQuery(document).ready(function($) {
		$('.viewed-items-wrap').owlCarousel2({
			pagination: false,
			center: false,
			nav: true,
			dots: false,
			loop: false,
			margin: 30,
			navText: [ 'prev', 'next' ],
			slideBy: 4,
			autoplay: false,
			autoplayTimeout: 2500,
			autoplayHoverPause: true,
			autoplaySpeed: 800,
			startPosition: 0,
			responsive:{
				0:{
					items: 1
			},
				480:{
			items: 2
		},
		768:{
			items: 3
		},
		992:{
			items: 5
		},
		1200:{
			items: 5
		}
		}
		});
	});
	// ]]></script>


</div></div>

</div>
<div class="container">