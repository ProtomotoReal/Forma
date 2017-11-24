<?php
if (!empty($child_items)) {
	$k = isset($rl_loaded ) ? $rl_loaded : 0; 
	$count = count($child_items);
	$i = 0;
	$count = count($child_items);
	if ($type_show == 'slider') { 
		echo '<div class="ltabs-items-inner owl2-carousel ltabs-slider ">';
	} 
	$countItem = count($child_items);
	foreach ($child_items as $item) {
		$i++;$k++; ?>
		<?php if($type_show == 'slider' && ($i % $rows == 1 || $rows == 1)) { ?>
			<div class="ltabs-item product-layout">
        <?php }?>
		<?php if ($type_show == 'loadmore'){ ?> 
		<div class="spcat-item new-spcat-item">
        <?php } ?>
        	<div class="product-item-container">
				<div class="left-block">
					<div class="product-image-container <?php if($product_image_num ==2 && isset($item['thumb2'])) echo 'second_img';?>">
						<div class="image">
							<?php if($item['thumb'] && $product_image == 1){ ?>
							<a class="lt-image" 
							   href="<?php echo $item['link'] ?>" target="<?php echo $item_link_target ?>"
								title="<?php echo $item['name'] ?>">
								<?php if($product_image_num ==2){?>
									<img src="<?php echo $item['thumb']?>" class="img-1" alt="<?php echo $item['name'] ?>">
									<img src="<?php echo $item['thumb2']?>" class="img-2" alt="<?php echo $item['name'] ?>">
								<?php }else{?>
									<img src="<?php echo $item['thumb']?>" alt="<?php echo $item['name'] ?>">
								<?php }?>
							</a>
							<?php }?>
							
						</div>
					</div>
				</div>
				<div class="box-label">
					<?php if ($item['special'] && $display_sale) : ?>
								<span class="label label-sale"><?php echo $objlang->get('text_sale'); ?></span>
							<?php endif; ?>
							<?php if ($item['productNew'] && $display_new) : ?>
								<span class="label label-new"><?php echo $objlang->get('text_new'); ?></span>
							<?php endif; ?>
				</div>
				<div class="right-block">
					<div class="caption">
						
						<?php if ($display_rating) { ?>
							<div class="rating">
							  <?php for ($j = 1; $j <= 5; $j++) { ?>
							  <?php if ($item['rating'] < $j) { ?>
							  <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
							  <?php } else { ?>
							  <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
							  <?php } ?>
							  <?php } ?>
							</div>
						<?php } ?>
						<?php if ($product_display_title == 1) { ?>
							<h4>
								<a href="<?php echo $item['link'] ?>" 
								    title="<?php echo $item['name'] ?>" target="<?php echo $item_link_target ?>">
								   <?php  echo $item['name_maxlength'];?>
								</a>
							</h4>
						<?php } ?>
						<?php if ($product_display_description == 1) { ?>
							<p><?php echo  html_entity_decode($item['description_maxlength']); ?></p>
						<?php }?>
						<?php if ($item['price'] && $product_display_price ==1) { ?>
							<p class="price">
							  <?php if (!$item['special']) { ?>
							  <?php echo $item['price']; ?>
							  <?php } else { ?>
							  <span class="price-new"><?php echo $item['special']; ?></span> <span class="price-old"><?php echo $item['price']; ?></span>
							  <?php } ?>
							  
							  <?php if ($item['tax']) { ?>
							  <span class="price-tax hidden"><?php echo $objlang->get('text_tax'); ?> <?php echo $item['tax']; ?></span>
							  <?php } ?>
							</p>
						<?php } ?>
					</div>
				</div>
				<div class="button-group so-quickview">
						<?php if($display_add_to_cart == 1)
						{
						?>
							<button class="addToCart" type="button" onclick="cart.add('<?php echo $item['product_id']; ?>');"><i class="fa fa-shopping-cart"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $objlang->get('button_cart'); ?></span></button>
						<?php }?>
						<?php if($display_wishlist == 1){
						?>
							<button class="wishlist" type="button" data-toggle="tooltip" title="<?php echo $objlang->get('button_wishlist'); ?>" onclick="wishlist.add('<?php echo $item['product_id']; ?>');"><i class="fa fa-heart"></i></button>
						<?php }?>
						<?php if($display_compare == 1){
						?>
							<button class="compare" type="button" data-toggle="tooltip" title="<?php echo $objlang->get('button_compare'); ?>" onclick="compare.add('<?php echo $item['product_id']; ?>');"><i class="fa fa-exchange"></i></button>
						<?php }?>
						<a class="hidden" data-product='<?php echo $item['product_id'];?>' href="<?php echo $item['link'];?>" target="<?php echo $item_link_target;?>"></a>
						
				</div>
			</div>
		<?php if($type_show == 'slider' && ($i % $rows == 0 || $i == $count)) { ?>
        </div>
    <?php }
    if ($type_show == 'loadmore'){ ?>
    </div>
    <?php } ?>
        <?php
        if($type_show == 'loadmore'){
        $clear = 'clr1';
        if ($k % 2 == 0) $clear .= ' clr2';
        if ($k % 3 == 0) $clear .= ' clr3';
        if ($k % 4 == 0) $clear .= ' clr4';
        if ($k % 5 == 0) $clear .= ' clr5';
        if ($k % 6 == 0) $clear .= ' clr6';
        ?>
        <div class="<?php echo $clear; ?>"></div>
        <?php } ?>
		
	<?php
	} ?>
	<?php if ($type_show == 'slider') { ?>
		</div>
	<?php } ?>
<?php
}else{ echo 'Has no content to show';}?>


