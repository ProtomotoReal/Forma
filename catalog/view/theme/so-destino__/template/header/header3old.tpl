
<header id="header" class="variant typeheader-<?php echo isset($typeheader) ? $typeheader : '1'?>">
<!-- HEADER TOP -->
  <div id="wrapper">
        <div class="container-fluid">
		<div class="row top">
		  <div class="h-panel clearfix">
		<nav class="h-nav h-nav-tabs">
		<span>Ваш город:
            <select class="option">
                <option>Краснодар</option>
                <option>Ростов</option>
            </select>
        </span>
		</nav>
			<nav class="h-nav h-nav-center" style="text-align:center; margin-left:3%;">
		    <a href="/index.php?route=information/information&information_id=4">О нас</a>
			<a href="/index.php?route=information/information&information_id=6">Оплата и доставка</a>
			<a href="/index.php?route=information/information&information_id=5">Возврат</a>
			<a href="/index.php?route=information/information&information_id=3">Статьи</a>
		    <a href="/index.php?route=information/contact">Контакты</a>
			</nav>
			<!--<nav class="h-nav pull-right text">
            <span>Добро пожаловать!</span>
			<a href="#">Войти</a>
			<a href="#">Регистрация</a>
			</nav>--><div class="header-top-right">
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
		   <div class="header-center">
		 
		     <div class="col-xs-12 col-md-3" style="float:left;">
			 <br>
			     <span class="text_phon"><strong>8 800 222 93 03</strong></span>
			<br>
            <span class="text_phon2"><span class="i1"></span><img src="/image/catalog/i1.png">+7 (928) 193 45 72</span>
            <p><span class="i1"></span><img src="/image/catalog/i2.png">ул.Малиновского 25 <br>
                <span class="i1"></span>ТЦ "Золотой Вавилон"</p>
			 </div>
			    <div class="col-xs-12 col-md-6" style="float:left;">
			    <span style="margin-top:-20px; margin-left:10%;">  <a href="/" > <?php  $this->soconfig->get_logo();?></a></span>
		    <br><br>

                    <div class="main-menu-w">
					<!-- Main menu -->				
					    <?php if (trim($content_menu)) :
							echo $content_menu;
					    endif; ?>
					</div>
			 </div>
			
			 <div class="col-xs-12 col-md-3" style="float:left;">
			
						
					<div class="shopping_cart" style="float:left; margin-left:20px;">							
					 	<?php echo $cart; ?>
					</div>
					
					 <div class="search-header-w" >	
						<div class="icon-search"><i class="fa fa-search"></i></div>			
						<?php  echo $content_search; ?>
					</div>
			  
			 </div>
		   </div>
		  
		   
		   
	
	<!-- HEADER CENTER -->


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