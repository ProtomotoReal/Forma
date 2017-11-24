<header>
	<style>
  .ah:hover{
    color:#000;
  }
</style>
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
					<a href="/about">О НАС</a>
					<a href="#">Оплата и доставка</a>
					<a href="#">Возврат</a>
					<a href="/articles">Статьи</a>
					<a href="/feedback">Контакты</a>                           
				</nav>
				<div class="login">
					<span>Добро пожаловать!</span>
					<span><a href="/index.php?route=account/login">Войти</a> | <a href="/index.php?route=account/register">Регистрация</a></span>
				</div>
			</div>
		</div>
		<div class="whiteline wrapper">
			<div class="contacts col-md-4">
				<h4>8 800 222 93 03</h4>
				<p><i class="fa-phone"></i><a href="tel:+79281934572">+7 (928) 193 45 72</a></p>
				<p><i class="fa-home"></i><span>ул. Малиновского 25<br/>ТЦ «Золотой Вавилон»</span></p>
			</div>
			<div class="second-nav col-md-4">
				<a href="/" class="logo"></a>
				<nav>
					<a href="/catalog-girls" data-target="to-girls">Девочкам</a>
					<a href="/boys" data-target="to-boys">Мальчикам</a>					
					<a href="" data-target="accessory">Аксессуары</a>
					<a href="" data-target="actions">Акции</a>
					<a href="/opt-catalog" data-target="offer">Предложение для школ</a>
				</nav>
			</div>
			<div class="tools">
				<!--<form class="search" action="#"><input type="text" name="search" placeholder="Искать..."></form>	-->
						<?php  echo $content_search; ?>
				<div class="basket">
					<i class="icon-basket"></i>
					<span class="amount">0 
					<div class="basket-dd">
					<?php if($checkout_status):?><li class="checkout"><a href="<?php echo $checkout; ?>" class="btn-link" title="<?php echo $text_checkout; ?>"><span ><?php echo $text_checkout; ?></span></a></li><?php endif; ?>	
					<li><a href="<?php echo $shopping_cart; ?>" title="<?php echo $text_shopping_cart; ?>"><i class="fa fa-shopping-cart"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_shopping_cart; ?></span></a></li>
        <li><a href="<?php echo $checkout; ?>" title="<?php echo $text_checkout; ?>"><i class="fa fa-share"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_checkout; ?></span></a></li>
						<?php echo $cart; ?>

					</div>
				</div>
			</div>
		</div>
		<div class="dropdown">
			<div class="dropdown-block" id="to-girls">
				<div class="vympel"><a href="/catalog-girls" class="ah">школьная форма для девочек</a></div>
				<div class="text">
					<a href="/girls/sarafans" class="mini-loop"><span>Сарафаны</span><img src="/catalog/view/css/img/for-girls/1.jpg" alt=""></a>
					<a href="/girls/blouses" class="mini-loop"><span>Блузки</span><img src="/catalog/view/css/img/for-girls/2.jpg" alt=""></a>
					<a href="/girls/dresses" class="mini-loop"><span>Платья</span><img src="/catalog/view/css/img/for-girls/3.jpg" alt=""></a>
					<a href="/girls/turtlenecks" class="mini-loop"><span>Водолазки</span><img src="/catalog/view/css/img/for-girls/4.jpg" alt=""></a>
					<a href="/girls/costumes" class="mini-loop"><span>Костюмы</span><img src="/catalog/view/css/img/for-girls/5.jpg" alt=""></a><br>
					<a href="/girls/waistcoats-g" class="mini-loop"><span>Жилеты</span><img src="/catalog/view/css/img/for-girls/6.jpg" alt=""></a>
					<a href="/girls/aprons" class="mini-loop"><span>Фартуки</span><img src="/catalog/view/css/img/for-girls/7.jpg" alt=""></a>
					<a href="/girls/bombers" class="mini-loop"><span>Бомберы</span><img src="/catalog/view/css/img/for-girls/8.jpg" alt=""></a>
					<a href="/girls/skirts" class="mini-loop"><span>Юбки</span><img src="/catalog/view/css/img/for-girls/9.jpg" alt=""></a>
					<a href="/girls/accessories" class="mini-loop"><span>Аксессуары</span><img src="/catalog/view/css/img/for-girls/10.jpg" alt=""></a>
				</div>
			</div>
			<div class="dropdown-block" id="to-boys">
				<div class="vympel"><a href="/boys" class="ah">школьная форма для мальчиков</a></div>
				<div class="text">
					<a href="/boys/shirts" class="mini-loop"><span>Сорочки</span><img src="/catalog/view/css/img/for-boys/1.jpg" alt=""></a>
					<a href="/boys/pants" class="mini-loop"><span>Брюки</span><img src="/catalog/view/css/img/for-boys/2.jpg" alt=""></a>
					<a href="/boys/jackets" class="mini-loop"><span>Пиджаки</span><img src="/catalog/view/css/img/for-boys/3.jpg" alt=""></a>
					<a href="/boys/waistcoats" class="mini-loop"><span>Жилеты</span><img src="/catalog/view/css/img/for-boys/4.jpg" alt=""></a><br/>
					<a href="/boys/turtlenecks-b" class="mini-loop"><span>Водолазки</span><img src="/catalog/view/css/img/for-boys/5.jpg" alt=""></a>
					<a href="/boys/costumes-b" class="mini-loop"><span>Костюмы</span><img src="/catalog/view/css/img/for-boys/6.jpg" alt=""></a>
					<a href="/boys/bombers-b" class="mini-loop"><span>Бомберы</span><img src="/catalog/view/css/img/for-boys/7.jpg" alt=""></a>
					<a href="/boys/accessories-b" class="mini-loop"><span>Аксессуары</span><img src="/catalog/view/css/img/for-boys/8.jpg" alt=""></a>
				</div>
			</div>
			<div class="dropdown-block" id="accessory">
				<div class="vympel">школьная форма и аксессуары</div>
				<div class="text">
					<div class="mini-loop" style="padding:15px;">
						<img src="/catalog/view/css/img/acc1.png" alt="">
						<span>Мальчики</span>
						<a href="#">Носки</a> 
						<a href="#">Трусы</a>
						<a href="#">Пижамы</a>
						<a href="#">Головные уборы</a>
						<a href="#">Майки</a>
					</div>
					<div class="mini-loop">
						<img src="/catalog/view/css/img/acc2.png" alt="">
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
				<div class="vympel"><a href="/opt-catalog" class="ah">предложение для школ</a></div>
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