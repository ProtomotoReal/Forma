
<header id="header" class=" variant typeheader-<?php echo isset($typeheader) ? $typeheader : '1'?>">
	<a id="btn-header-sidebar" class="hidden-lg hidden-md navbar-toggle" href="javascript:void(0);" title="Navigation"><i class="fa fa-bars"></i></a>
	<div class="header6-inner">
		<!-- LANGUAGE CURENCY -->
		<?php if($lang_status):?>
		<ul class="lang-curr">
			<li class="currency"> <?php echo $currency; ?> </li>
			<li class="language"><?php echo $language; ?></li>
		</ul>
		<?php endif; ?>

		<div class="logo">
	   		<?php  $this->soconfig->get_logo();?>
	   	</div>

	   	<div class="shopping_cart">							
		 	<?php echo $cart; ?>
		</div>

		<!-- Main menu -->				
	    <?php if (trim($content_menu)) :
			echo $content_menu;
	    endif; ?>
	    <!-- //end Navbar -->

	    <div class="search-header-w">				
			<?php  echo $content_search; ?>
		</div>

		<ul class="top-link list-inline">
			<?php if($welcome_message_status):?>
			<li class="hidden-sm hidden-xs welcome-msg">
				<?php
					if (isset($welcome_message) && is_string($welcome_message)) {
						echo html_entity_decode($welcome_message, ENT_QUOTES, 'UTF-8');
					} else {echo 'Default welcome msg!';}
				?>
			</li>
			<?php endif; ?>
			<?php if ($logged) { ?>
				<li><a href="<?php echo $logout; ?>"><?php echo $text_logout; ?></a></li>							
				<?php } else { ?>
				<li><a href="<?php echo $login; ?>"><?php echo $text_login; ?></a></li>
				<li><a href="<?php echo $register; ?>"><?php echo $text_register; ?></a></li>							
			<?php } ?>

			<!-- WISHLIST  -->
			<?php if($wishlist_status):?><li class="wishlist"><a href="<?php echo $wishlist; ?>" id="wishlist-total" class="btn-link" title="<?php echo $text_wishlist; ?>"><span ><?php echo $text_wishlist; ?></span></a></li><?php endif; ?>
			<!-- checkout -->
			<?php if($checkout_status):?><li class="checkout"><a href="<?php echo $checkout; ?>" class="btn-link" title="<?php echo $text_checkout; ?>"><span ><?php echo $text_checkout; ?></span></a></li><?php endif; ?>												
		</ul>
		<?php if($phone_status):?>
			<div class="telephone hidden-xs hidden-sm hidden-md" >
				<?php
					if (isset($contact_number) && is_string($contact_number)) {
						echo html_entity_decode($contact_number, ENT_QUOTES, 'UTF-8');
					} else {echo 'Telephone No';} 
				?>
			</div>
		<?php endif; ?>

		<div class="header-socials">
			<?php echo $header_block1; ?>
		</div>

	</div>

	
	<!-- Navbar switcher -->
	<?php if (!isset($toppanel_status) || $toppanel_status != 0) : ?>
	<?php if (!isset($toppanel_type) || $toppanel_type != 2 ) :  ?>
	<div class="navbar-switcher-container">
		<div class="navbar-switcher">
			<span class="i-inactive">
				<i class="fa fa-caret-down"></i>
			</span>
			 <span class="i-active fa fa-times"></span>
		</div>
	</div>
	<?php endif; ?>
	<?php endif; ?>
</header>