
<header id="header" class=" variant typeheader-<?php echo isset($typeheader) ? $typeheader : '1'?>">
	<!-- HEADER TOP -->
	<div class="header-top compact-hidden">

		<div class="row">
			<div class="header-top-left  col-lg-6 col-md-5 col-sm-6 col-xs-8">
				<!-- LANGUAGE CURENCY -->
				<?php if($lang_status):?>
				<ul class="lang-curr">
					<li class="currency"> <?php echo $currency; ?> </li>
					<li class="language"><?php echo $language; ?></li>
				</ul>
				<?php endif; ?>
			</div>
			<div class="header-top-right collapsed-block col-lg-6 col-md-7 col-sm-6 col-xs-4">
				
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
			
			</div>
		</div>

	</div>
	
	<!-- HEADER CENTER -->
	<div class="header-bottom compact-hidden">

			<div class="row">
				<!-- LOGO -->
				<div class="navbar-logo col-lg-3 col-md-12 col-sm-8 col-xs-12">
					<div class="logo">
				   		<?php  $this->soconfig->get_logo();?>
				   	</div>
				</div>
				<div class="main-menu col-lg-6 col-md-10 col-sm-2 col-xs-4">
						
				    <?php if (trim($content_menu)) :
						echo $content_menu;
				    endif; ?>
				</div>
				<div class="header-b-right col-lg-3 col-md-2 col-sm-2 col-xs-8">	
					<div class="search-header-w">
						<div class="icon-search hidden-lg"><i class="fa fa-search"></i></div>				
						<?php  echo $content_search; ?>
					</div>
					
					<div class="shopping_cart">							
					 	<?php echo $cart; ?>
					</div>
				
				</div>

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