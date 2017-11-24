<header>
		<div class="blackline">
			<div class="wrapper">
				<div class="location">
					<span>Ваш город</span>
					<select>
						<option value="" selected>Ростов на Дону</option>
						<option value="">Москва</option>
						<option value="">Анапа</option>						
					</select>
				</div>
				<nav>
					<a href="#">О НАС</a>
					<a href="#">Оплата и доставка</a>
					<a href="#">Возврат</a>
					<a href="#">Статьи</a>
					<a href="#">Контакты</a>                           
				</nav>
				<!--<div class="login">
					<span>Добро пожаловать!</span>
					<span><a href="#">Войти</a> | <a href="">Регистрация</a></span>
				</div>-->
				<div class="header-top-right">
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
		<div class="whiteline wrapper">
			<div class="contacts">
				<h4>8 800 222 93 03</h4>
				<p><i class="fa-phone"></i><a href="tel:+79281934572">+7 (928) 193 45 72</a></p>
				<p><i class="fa-home"></i><span>ул. Малиновского 25<br/>ТЦ «Золотой Вавилон»</span></p>
			</div>
			<div class="second-nav">
				<a href="/" class="logo" > <?php  $this->soconfig->get_logo();?></a>
				<nav>
					<a href="/index.php?route=information/information&information_id=7" data-target="to-girls">Деfdghвочкам</a>
					<a href="" data-target="to-boys">Мальчикам</a>					
					<a href="" data-target="accessory">Аксессуары</a>
					<a href="" data-target="actions">Акции</a>
					<a href="" data-target="offer">Предложение для школ</a>
				</nav>
			</div>
			<div class="tools">
				<!--<form class="search" action="#"><input type="text" name="search" placeholder="Искать..."></form>	-->
					<div class="search-header-w">
						<div class="icon-search"><i class="fa fa-search"></i></div>
						<?php  echo $content_search; ?>
					</div>
					<div class="shopping_cart">
						<?php echo $cart; ?>
					</div>					
				<!--<div class="basket">
					<i class="icon-basket"></i>
					<span class="amount">0</span>
					<div class="basket-dd">
						<p>3 последних добавленных товара из 7</p>
						<div class="table-wrapper">
							<table>
								<tbody>
									<tr>
										<td><img src="catalog/view/css/img/basket1.jpg" alt=""></td>
										<td>Блуза А-377 цвет голубой</td>
										<td>x1</td>
										<td>2000р</td>
										<td><a href="#" class="fa-trash-o"></a></td>
									</tr>
									<tr>
										<td><img src="catalog/view/css/img/basket2.jpg" alt=""></td>
										<td>Блуза А-34 цвет синий</td>
										<td>x12</td>
										<td>2000р</td>
										<td><a href="#" class="fa-trash-o"></a></td>
									</tr>
									<tr>
										<td><img src="catalog/view/css/img/basket3.jpg" alt=""></td>
										<td>Рубашка С374 цвет серый</td>
										<td>x2</td>
										<td>2000р</td>
										<td><a href="#" class="fa-trash-o"></a></td>
									</tr>
									<tr>
										<td><img src="catalog/view/css/img/basket1.jpg" alt=""></td>
										<td>Блуза А-377 цвет голубой</td>
										<td>x5</td>
										<td>2000р</td>
										<td><a href="#" class="fa-trash-o"></a></td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>-->
			</div>
		</div>
		<div class="dropdown">
			<div class="dropdown-block" id="to-girls">
				<div class="vympel">школьная форма для девочек</div>
				<div class="text">
					<a href="#" class="mini-loop"><span>Сарафаны</span><img src="catalog/view/css/img/for-girls/1.jpg" alt=""></a>
					<a href="#" class="mini-loop"><span>Блузки</span><img src="catalog/view/css/img/for-girls/2.jpg" alt=""></a>
					<a href="#" class="mini-loop"><span>Платья</span><img src="catalog/view/css/img/for-girls/3.jpg" alt=""></a>
					<a href="#" class="mini-loop"><span>Водолазки</span><img src="catalog/view/css/img/for-girls/4.jpg" alt=""></a>
					<a href="#" class="mini-loop"><span>Костюмы</span><img src="catalog/view/css/img/for-girls/5.jpg" alt=""></a><br>
					<a href="#" class="mini-loop"><span>Жилеты</span><img src="catalog/view/css/img/for-girls/6.jpg" alt=""></a>
					<a href="#" class="mini-loop"><span>Фартуки</span><img src="catalog/view/css/img/for-girls/7.jpg" alt=""></a>
					<a href="#" class="mini-loop"><span>Бомберы</span><img src="catalog/view/css/img/for-girls/8.jpg" alt=""></a>
					<a href="#" class="mini-loop"><span>Юбки</span><img src="catalog/view/css/img/for-girls/9.jpg" alt=""></a>
					<a href="#" class="mini-loop"><span>Аксессуары</span><img src="catalog/view/css/img/for-girls/10.jpg" alt=""></a>
				</div>
			</div>
			<div class="dropdown-block" id="to-boys">
				<div class="vympel">школьная форма для мальчиков</div>
				<div class="text">
					<a href="#" class="mini-loop"><span>Сорочки</span><img src="catalog/view/css/img/for-boys/1.jpg" alt=""></a>
					<a href="#" class="mini-loop"><span>Брюки</span><img src="catalog/view/css/img/for-boys/2.jpg" alt=""></a>
					<a href="#" class="mini-loop"><span>Пиджаки</span><img src="catalog/view/css/img/for-boys/3.jpg" alt=""></a>
					<a href="#" class="mini-loop"><span>Жилеты</span><img src="catalog/view/css/img/for-boys/4.jpg" alt=""></a><br/>
					<a href="#" class="mini-loop"><span>Водолазки</span><img src="catalog/view/css/img/for-boys/5.jpg" alt=""></a>
					<a href="#" class="mini-loop"><span>Костюмы</span><img src="catalog/view/css/img/for-boys/6.jpg" alt=""></a>
					<a href="#" class="mini-loop"><span>Бомберы</span><img src="catalog/view/css/img/for-boys/7.jpg" alt=""></a>
					<a href="#" class="mini-loop"><span>Аксессуары</span><img src="catalog/view/css/img/for-boys/8.jpg" alt=""></a>
				</div>
			</div>
			<div class="dropdown-block" id="accessory">
				<div class="vympel">школьная форма для аксессуары</div>
				<div class="text">
					<div class="mini-loop">
						<img src="catalog/view/css/img/acc1.png" alt="">
						<span>Мальчики</span>
						<a href="#">Носки</a> 
						<a href="#">Трусы</a>
						<a href="#">Пижамы</a>
						<a href="#">Головные уборы</a>
						<a href="#">Майки</a>
					</div>
					<div class="mini-loop">
						<img src="catalog/view/css/img/acc2.png" alt="">
						<span>Девочки</span>
						<a href="#">Колготки</a>
						<a href="#">Галстуки</a>
						<a href="#">Носки</a>
						<a href="#">Трусы</a>
						<a href="#">Пижамы</a>
						<a href="#">Головные уборы</a>
						<a href="#">Майки</a> 
					</div>
				</div>
			</div>
			<div class="dropdown-block" id="actions">
				<div class="vympel">школьная форма акции</div>
				<div class="text">
					<div class="mini-loop">
						<span>Все акции сезона</span>
						<a href="#">Полный размерный ряд юбок ОПТом</a>
						<a href="#">Трусы на все размеры скидка 10%</a>
						<a href="#">Брюки со скидкой</a>
						<a href="#">Костюмы брюные со скидкой 15%</a>
						<a href="#">Майки для девочек распродаж</a>
					</div>
				</div>
				<div class="circle">-30%</div>
			</div>
			<div class="dropdown-block" id="offer">
				<div class="vympel">школьная форма для аксессуары</div>
				<div class="text">
					<div class="mini-loop">
						<span>Девочки</span>
						<a href="#">Водолазки</a>
						<a href="#">Бомберы</a>
						<a href="#">Жилеты</a>
						<a href="#">Юбки</a>
					</div>
					<div class="mini-loop">
						<span>Мальчики</span>
						<a href="#">Сорочки</a>
						<a href="#">Брюки</a>
						<a href="#">Водолазки</a>
						<a href="#">Бомберы</a>
					</div>
				</div>
				<div class="circle">Опт</div>
			</div>
		</div>
	</header>