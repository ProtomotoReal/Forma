 
<header id="header" class=" variant typeheader-<?php echo isset($typeheader) ? $typeheader : '1'?>">

	<!-- HEADER TOP -->
	<div class="header-top compact-hidden">
		<div class="inner">
			<div class="row">
				<div class="header-top-left col-lg-4 col-md-4 col-sm-4 col-xs-6">
					<!-- LANGUAGE CURENCY -->
					<?php if($lang_status):?>
					<ul class="top-link list-inline">
						<li class="currency"> <?php echo $currency; ?> </li>
						<li class="language"><?php echo $language; ?></li>
					</ul>
					<?php endif; ?>
					
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
				<div class="navbar-logo col-lg-4 col-md-4  col-sm-4 col-xs-12">
					<div class="logo">
				   		<?php  $this->soconfig->get_logo();?>
				   	</div>
				</div>
				<div class="header-top-right collapsed-block col-lg-4 col-md-4  col-sm-4 col-xs-6 ">
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
				</div>
			</div>
		</div>
	</div>
	<!-- HEADER CENTER -->
	<div class="header-center">
		<div class="container">

			<div class="main-menu-w">
			<!-- Main menu -->				
			    <?php if (trim($content_menu)) :
					echo $content_menu;
			    endif; ?>
			</div>
			<div class="cart-search">
				<div class="shopping_cart">							
				 	<?php echo $cart; ?>
				</div>

				<div class="search-header-w">	
					<div class="icon-search"><i class="fa fa-search"></i></div>			
					<?php  echo $content_search; ?>
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
