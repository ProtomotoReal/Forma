<header id="header" class=" variant typeheader-<?php echo isset($typeheader) ? $typeheader : '1'?>">
	<!-- HEADER TOP -->
	<div class="header-top compact-hidden clearfix">
		<div class="header-top-left  col-lg-3 col-md-4 col-sm-12 col-xs-12">
			<div class="location">
				<span>Ваш город: </span>
				<?php /*
				<select>
					<option value="" selected>Ростов на Дону</option>
					<option value="">Новочеркасск</option>
					<option value="">Шахты</option>
					<option value="">Таганрог</option>
					<option value="">Гуково</option>
				</select>
				*/ ?>

				<div class="prmn-cmngr" data-confirm="true"></div>
			</div>

		</div>

		<div class="header-top-center  col-lg-6 col-md-8 col-sm-12 col-xs-12 blackline">
			<?php /*
			<nav>
				<a href="/about">О НАС</a>
				<a href="/oplata-i-dostavka">Оплата и доставка</a>
				<a href="/vozvrat">Возврат</a>
				<a href="/index.php?route=simple_blog/article">Статьи</a>
				<a href="/contact-us/">Контакты</a>
			</nav>
			*/ ?>



				<nav class="navbar navbar-default navbar-inverse" role="navigation">
					<div class="container-fluid" id="navfluid">
						<div class="navbar-header hidden-sm">
							<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navigationbar">
								<span class="sr-only">Сменить меню</span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
							</button>
						</div>
						<div class="collapse navbar-collapse" id="navigationbar">
							<ul class="nav navbar-nav">
								<li><a href="/about">О НАС</a></li>
								<li><a href="/oplata-i-dostavka">Оплата и доставка</a></li>
								<li><a href="/vozvrat">Возврат</a></li>
								<li><a href="/index.php?route=simple_blog/article">Статьи</a></li>
								<li><a href="/contact-us/">Контакты</a></li>
							</ul>
						</div><!-- /.navbar-collapse -->
					</div><!-- /.container-fluid -->
				</nav>


		</div>

		<div class="header-top-right collapsed-block col-lg-3 col-md-12 col-sm-12 col-xs-12">

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

				<li><a href="/my-account/">Кабинет</a></li>

				<li><a href="<?php echo $logout; ?>"><?php echo $text_logout; ?></a></li>
				<?php } else { ?>
				<li><a href="<?php echo $login; ?>"><?php echo $text_login; ?></a></li>
				<li><a href="<?php echo $register; ?>"><?php echo $text_register; ?></a></li>
				<?php } ?>

				<!-- WISHLIST  -->
				<?php if($wishlist_status):?>
				<li class="wishlist"><a href="<?php echo $wishlist; ?>" id="wishlist-total" class="btn-link"
										title="<?php echo $text_wishlist; ?>"><span><?php echo $text_wishlist; ?></span></a>
				</li>
				<?php endif; ?>
				<!-- checkout -->
				<?php if($checkout_status):?>
				<li class="checkout"><a href="<?php echo $checkout; ?>" class="btn-link"
										title="<?php echo $text_checkout; ?>"><span><?php echo $text_checkout; ?></span></a>
				</li>
				<?php endif; ?>
			</ul>
			<?php if($phone_status):?>
			<div class="telephone hidden-xs hidden-sm hidden-md">
				<?php
								if (isset($contact_number) && is_string($contact_number)) {
									echo html_entity_decode($contact_number, ENT_QUOTES, 'UTF-8');
								} else {echo 'Telephone No';} 
							?>
			</div>
			<?php endif; ?>
		</div>


	</div>

	<!-- HEADER CENTER -->
	<div class="header-center">

		<div class="col-lg-3 col-md-3 col-sm-12 col-xs-12 contacts">
			<div class="big-phone">8 800 222 93 03</div>
			<p class="small-phone"><i class="fa fa-phone"></i><span class="prmn-cmngr-message" data-key="phone" data-default="+7 (928) 193 45 72">+7 (928) 193 45 72</span></p>
			<p><i class="fa fa-home"></i><span class="prmn-cmngr-message" data-key="address" data-default="ул. Малиновского 25<br>ТЦ «Золотой Вавилон»">ул. Малиновского 25,ТЦ&nbsp;«Золотой&nbsp;Вавилон»</span></p>
		</div>

		<!-- LOGO -->
		<div class="navbar-logo col-lg-6 col-md-6 col-sm-12 col-xs-12">
			<div class="logo">
				<?php  $this->soconfig->get_logo();?>
			</div>
		</div>


		<div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">

			<div class="cart-wrapper">

				<div class="shopping_cart">
					<?php echo $cart; ?>
				</div>

				<div class="search-header-w">
					<div class="icon-search"><i class="fa fa-search"></i></div>
					<?php  echo $content_search; ?>
				</div>

			</div>

		</div>

		<div class="container">
		<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 col-main-menu">
			<div class="main-menu-w">
				<!-- Main menu -->
				<?php if (trim($content_menu)) :
							echo $content_menu;
					    endif; ?>
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