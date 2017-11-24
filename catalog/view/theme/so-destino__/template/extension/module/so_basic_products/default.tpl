<?php
$tag_id = 'so_basic_products_'.$moduleid.'_'.rand().time();
$class_respl0 = 'preset00-'.$nb_column0.' preset01-'.$nb_column1.' preset02-'.$nb_column2.' preset03-'.$nb_column3.' preset04-'.$nb_column4;
?>
<div class="module up-sell-product <?php echo $class_suffix; ?>">
	<?php if($disp_title_module) {?>
		<h3 class="modtitle"><span><?php echo $head_name; ?></span></h3>
	<?php } ?>
	<div class="so-basic-product" id="<?php echo $tag_id ?>">
		<div class="item-wrap row cf products-list grid">
			 <?php $j = 0; foreach($products as $product)  { $j++; ?>
			 <div class="item-element product-layout ">
				<div class="product-item-container">
						<div class="left-block">
							<div class="product-image-container <?php if($product_image_num ==2 && isset($product['thumb2'])) echo 'second_img';?>">
								<a class="link-block" href="<?php echo $product['href'];?>" title="<?php echo $product['nameFull'];?>" target="<?php echo $item_link_target;?>" >
								<?php if($product_image_num ==2){?>
									<img src="<?php echo $product['thumb']?>" class="img-1 img-responsive" alt="<?php echo $product['nameFull'] ?>">
									<img src="<?php echo $product['thumb2']?>" class="img-2 img-responsive" alt="<?php echo $product['nameFull'] ?>">
								<?php }else{?>
									<img src="<?php echo $product['thumb']?>" alt="<?php echo $product['nameFull'] ?>">
								<?php }?>
								</a>									
							</div>
					
							<div class="box-label">
								<!--New Label-->
								<?php if ($product['productNew'] && $display_new) : ?>
									<span class="label-product label-new"><?php echo $objlang->get('text_new'); ?></span>
								<?php endif; ?>
							
								<!--Sale Label-->
								<?php if ($product['special'] && $display_sale) : ?>
									<span class="label-product label-sale">
										<?php if(!isset($discount_status) || $discount_status) echo $product['discount']; ?> 
										<?php //echo $objlang->get('text_sale'); ?>
									</span>
									
								<?php endif; ?>
							</div>

							<!-- BOX BUTTON -->
							<?php if( $display_wishlist || $display_compare) { ?>
								<div class="button-group so-quickview">
									<?php if ($display_wishlist == 1) { ?>
									<button class="wishlist btn-button" type="button" data-toggle="tooltip" title="<?php echo $objlang->get('button_wishlist'); ?>" onclick="wishlist.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-heart"></i></button>
									<?php } ?>
									<?php if ($display_compare == 1) { ?>
									<button class="compare btn-button" type="button" data-toggle="tooltip" title="<?php echo $objlang->get('button_compare'); ?>" onclick="compare.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-refresh"></i></button>
									<?php } ?>
																										
									<a class="hidden" data-product='<?php echo $product['product_id'];?>' href="<?php echo $product['href'];?>" target="<?php echo $item_link_target;?>"></a>

								</div>
							<?php } ?>
					
						</div>
						  		
						<div class="right-block">
							<div class="caption">
								<?php if($display_rating){
									if (!empty($product['rating'])){
								?>
								<div class="ratings">
									<?php for ($k = 1; $k <= 5; $k++) { ?>
										<?php if ($product['rating'] < $k) { ?>
										<span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
										<?php } else { ?>
										<span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
										<?php } ?>
									<?php } ?>
								</div>
								<?php }else{ ?>
								<div class="rating">
									<?php for ($j = 1; $j <= 5; $j++) { ?>
									<span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
									<?php } ?>
								</div>
								<?php 	}
									}
								?>

								<?php if($display_title) { ?>
									<h4>
										<a href="<?php echo $product['href'];?>" target="<?php echo $item_link_target;?>"
										   title="<?php echo $product['nameFull']; ?>"  >
											<?php echo html_entity_decode($product['name']); ?>
										</a>
									</h4>						
								<?php } ?>

								<?php if($display_price) { ?>
									<div  class="price">
										<?php if (!$product['special']) { ?>
										<span class="price-new">
											<?php echo $product['price']; ?>
										</span>
										<?php } else { ?>
											<span class="price-new"><?php echo $product['special']; ?></span>&nbsp;&nbsp;
											<span class="price-old"><?php echo $product['price']; ?></span>&nbsp;
										<?php } ?>
										<?php if ($product['tax']) { ?>
											<span class="price-percent-reduction hidden"><?php echo $objlang->get('text_tax'); ?> <?php echo $product['tax']; ?></span>
										<?php } ?>
									</div>
								<?php } ?>
								
								<?php if($display_description) { ?>
									<div class="description">
										<?php echo html_entity_decode($product['description']); ?>
									</div>
								<?php } ?>

							</div>
							<!-- CART -->
							<?php if ($display_add_to_cart == 1) { ?>
								<button class="addToCart" type="button" data-toggle="tooltip" title="<?php echo $objlang->get('button_cart'); ?>" onclick="cart.add('<?php echo $product['product_id']; ?>');">
									<?php //if($nb_column0 != 6) { ?>
									<span><?php echo $objlang->get('button_cart'); ?></span>
									<?php //} ?>
								</button>
							<?php } ?>
						</div>
					</div>
			 </div>
			  <?php
			$clear = 'clr1';
			if ($j % 2 == 0) $clear .= ' clr2';
			if ($j % 3 == 0) $clear .= ' clr3';
			if ($j % 4 == 0) $clear .= ' clr4';
			if ($j % 5 == 0) $clear .= ' clr5';
			if ($j % 6 == 0) $clear .= ' clr6';
			?>
			
			 <?php 
			 } ?>
		</div>
	</div>
</div>

<script>// <![CDATA[
jQuery(document).ready(function($) {
		$('.item-wrap').owlCarousel2({
			pagination: false,
			center: false,
			nav: true,
			dots: false,
			loop: true,
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
					items: <?php echo $nb_column4;?>
				},
				480:{
					items: <?php echo $nb_column3;?>
				},
				768:{
					items: <?php echo $nb_column2;?>
				},
				992:{
					items: <?php echo $nb_column1;?>
				},
				1200:{
					items: <?php echo $nb_column0;?>
				}
			}
		});	  
	});
// ]]></script>

