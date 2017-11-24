<?php echo $header; ?>

<?php //echo "<pre>"; print_r($products); ?>








<main>
		<div class="banner-top">
			<h2><?php echo $heading_title; ?></h2>
			<p class="breadcrumbs">
			
			 <?php foreach ($breadcrumbs as $breadcrumb) { ?>
			     
                 <a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
				 <span class="separator"></span>
               <?php } ?>
				
				
			</p>
		</div>
		<div class="wrapper with-filter">
			<aside>
				<h4>МАГАЗИН</h4>
				<form action="#" class="filters">
				  <?php if($categories): ?>
					<div class="filter-block">
						<h5>Категории</h5>
						<div class="input-block yellow">
						   <?php foreach($categories as $key => $category): ?>
							<label><input type="checkbox" name="category[]" value="<?=$category['href']; ?>"> <span><?=$category['name']; ?></span></label>
						
							<?php endforeach; ?>
						</div>
					</div>
					<?php endif; ?> 
					<div class="filter-block">
						<h5>Цвет</h5>
						<div class="input-block">
							<label><input type="checkbox" name="color" value="brown"> <span>Коричневый</span></label>
							<label><input type="checkbox" name="color" value="gray"> <span>Серый</span></label>
							<label><input type="checkbox" name="color" value="red"> <span>Красный</span></label>
							<label><input type="checkbox" name="color" value="black"> <span>Черный</span></label>
							<label><input type="checkbox" name="color" value="blue"> <span>Синий</span></label>
						</div>
					</div>
					<div class="filter-block">
						<h5>Размер</h5>
						<div class="input-block">
							<label><input type="checkbox" name="size" value="108"> <span>108</span></label>
						</div>
					</div>
					<div class="filter-block">
						<h5>Цена</h5>
						<div class="input-block price">
							<div>
								<input type="text">
								<input type="text">
							</div>
							<input type="range" min="0" max="100" step="1" value="50">							
						</div>
						<input type="reset">
					</div>
					
				</form>
				<img src="img/aside.jpg" alt="">
			</aside>
			<div class="content">
				<h4><?php echo $heading_title; ?></h4>
				<form class="toolbar" id="top-filter" action="#">
					<div class="radio">
						<input type="radio" id="table-view" name="view">
						<label for="table-view"><i class="fa-th-large"></i></label>
					</div>
					<div class="radio">
						<input type="radio" id="list-view" name="view">
						<label for="list-view"><i class="fa-bars"></i></label>
					</div>					
						<span class="sort">Сортировать по:</span>
						<select name="sort">
							<option value="default" checked>По умолчанию</option>
							<option value="price">Цене</option>
						</select>
						<span>Показать:</span>
						<select name="show">
							<option value="9" checked>9</option>
							<option value="2">2</option>
						</select>
						<input type="text" disabled value="Сравнить (1)">
				</form>
				<div class="goods-catalog">
				
					<?php if($products): ?>
					<?php foreach($products as $product): ?> 
					<div class="good">
						<div class="pic">
							<a href="<?=$product['href']; ?>"><img src="<?=$product['thumb']?>" alt="<?=$product['name']?>" /></a>
							<div>
								<i class="fa-heart"></i>
								<i class="fa-refresh"></i>
								<i class="fa-search"></i>
							</div>
						</div>
						<div class="text">							
							<div class="rating">
								<i class="fa-star"></i>
								<i class="fa-star"></i>
								<i class="fa-star"></i>
								<i class="fa-star"></i>
								<i class="fa-star"></i>
							</div>
							<h5><?=$product['name']?></h5>
							<div class="price">
								<span><?=$product['price']?> <i class="fa-rouble"></i></span>
							</div>
							<form action="" class="buy-it">
								<select name="size" required="required">									
									<option value="50">50</option>
									<option value="55">55</option>
									<option value="none" selected disabled hidden>Размер</option>
								</select>
								<div class="color">
									<label style="background-color: #2e3192;"><input type="radio" name="color" value="blue"></label>
									<label style="background-color: #00a651;"><input type="radio" name="color" value="green"></label>
									<label style="background-color: #ecd759;"><input type="radio" name="color" value="yellow"></label>
									<label style="background-color: #362f2d;"><input type="radio" name="color" value="brown"></label>
								</div>
								<div class="button">
									<input type="number" name="amount" value="1" min="1" max="99" step="1">
									<button onclick="cart.add('<?php echo $product['product_id']; ?>');">В корзину</button>
								</div>
							</form>
						</div>
					</div>
					<?php endforeach;?>
					<?php else: ?>
					 <h2>В данной категории нет товаров</h2>
					<?php endif; ?> 
				
				
			
				
			
				</div>
				<div class="toolbar">
					<div class="radio">
						<input type="radio" id="table-view" name="view" form="top-filter">
						<label for="table-view"><i class="fa-th-large"></i></label>
					</div>
					<div class="radio">
						<input type="radio" id="list-view" name="view" form="top-filter">
						<label for="list-view"><i class="fa-bars"></i></label>
					</div>
					<div class="pagination">
						<a href="#">1</a>
						<a href="#">2</a>
						<a href="#">></a>
						<a href="#">>|</a>
					</div>
				</div>
			</div>
		</div>
		<div class="gray prop">
			<h2>Просмотренные товары</h2>
			<div class="cross-line">&#215;</div>
			<div class="carousel-mini">
				<a href="" class="good-mini">
					<img src="img/hit1.jpg" alt="">
					<span>Юбка А54</span>
					<span class="price">1500 р.</span>
				</a>
				<a href="" class="good-mini">
					<img src="img/hit2.jpg" alt="">
					<span>Юбка А54</span>
					<span class="price">1500 р.</span>
				</a>
				<a href="" class="good-mini">
					<img src="img/hit3.jpg" alt="">
					<span>Юбка А54</span>
					<span class="price">1500 р.</span>
				</a>
				<a href="" class="good-mini">
					<img src="img/hit1.jpg" alt="">
					<span>Юбка А54</span>
					<span class="price">1500 р.</span>
				</a>
				<a href="" class="good-mini">
					<img src="img/hit2.jpg" alt="">
					<span>Юбка А54</span>
					<span class="price">1500 р.</span>
				</a>
				<a href="" class="good-mini">
					<img src="img/hit3.jpg" alt="">
					<span>Юбка А54</span>
					<span class="price">1500 р.</span>
				</a>
				<a href="" class="good-mini">
					<img src="img/hit1.jpg" alt="">
					<span>Юбка А54</span>
					<span class="price">1500 р.</span>
				</a>
				<a href="" class="good-mini">
					<img src="img/hit2.jpg" alt="">
					<span>Юбка А54</span>
					<span class="price">1500 р.</span>
				</a>
				<a href="" class="good-mini">
					<img src="img/hit3.jpg" alt="">
					<span>Юбка А54</span>
					<span class="price">1500 р.</span>
				</a>
			</div>
		</div>
		<div class="prop">
			<h2>Рекомендуемые товары</h2>
			<div class="cross-line">&#215;</div>
			<div class="carousel-mini">
					<a href="" class="good-mini">
						<img src="img/hit1.jpg" alt="">
						<span>Юбка А54</span>
						<span class="price">1500 р.</span>
					</a>
					<a href="" class="good-mini">
						<img src="img/hit2.jpg" alt="">
						<span>Юбка А54</span>
						<span class="price">1500 р.</span>
					</a>
					<a href="" class="good-mini">
						<img src="img/hit3.jpg" alt="">
						<span>Юбка А54</span>
						<span class="price">1500 р.</span>
					</a>
					<a href="" class="good-mini">
						<img src="img/hit1.jpg" alt="">
						<span>Юбка А54</span>
						<span class="price">1500 р.</span>
					</a>
					<a href="" class="good-mini">
						<img src="img/hit2.jpg" alt="">
						<span>Юбка А54</span>
						<span class="price">1500 р.</span>
					</a>
					<a href="" class="good-mini">
						<img src="img/hit3.jpg" alt="">
						<span>Юбка А54</span>
						<span class="price">1500 р.</span>
					</a>
					<a href="" class="good-mini">
						<img src="img/hit1.jpg" alt="">
						<span>Юбка А54</span>
						<span class="price">1500 р.</span>
					</a>
					<a href="" class="good-mini">
						<img src="img/hit2.jpg" alt="">
						<span>Юбка А54</span>
						<span class="price">1500 р.</span>
					</a>
					<a href="" class="good-mini">
						<img src="img/hit3.jpg" alt="">
						<span>Юбка А54</span>
						<span class="price">1500 р.</span>
					</a>
				</div>
		</div>
		<div class="text-area">
			<h2><span class="gold">Специальное предложения для школ</span></h2>
			<p>Интернет магазин одежды Wildberries – это доступные цены, широкий, регулярно обновляемый ассортимент. В онлайн-каталоге Wildberries представлено около 7000 ведущих брендов женской, мужской и детской одежды и обуви, электроники, книжной продукции, ювелирных изделий, игрушек и т.д. Для удобства пользования онлайн-каталог поделен на разделы, все товары можно сортировать по ряду критериев: цена, материал изготовления, сезонность, бренд.</p>
			<h3>Выгодный шоппинг</h3>
			<p>Интернет магазин Wildberries регулярно проводит масштабные распродажи, в рамках которых купить одежду и обувь становится еще реальнее. Чтобы быть в курсе предстоящих скидок или появления в ассортименте новых моделей одежды от любимых брендов, достаточно подписаться на email-рассылку магазина. Дополнительные выгодные условия действуют для постоянных покупателей Wildberries – персональная скидка, зависящая от процента выкупа вещей. В Wildberries всегда ответственно подходят к выбору поставщиков, со многими производителями мы работаем напрямую, поэтому все категории товаров отличаются высоким качеством, разнообразием моделей и цветов.</p>
			<h3>Доставка и оплата без проблем</h3>
			<p>Онлайн магазин Wildberries осуществляет бесплатную доставку по всей России с помощью собственной курьерской службы. Также покупатель может забрать заказ из пункта самовывоза или получить по почте. Любую одежду, обувь и другие товары можно примерить перед оплатой заказа курьеру или в пункте самовывоза, оборудованном удобными примерочными.</p>
			<p>Wildberries предлагает несколько различных вариантов оплаты заказа как при оформлении, так и по факту при получении, - банковскими картой или переводом, наличным расчетом или электронным платежом. Если товар не подошел, его можно вернуть с курьером как до оплаты заказа, так и после по почте или в одном из пунктов самовывоза в течение 21 дня.</p>
			<a href="#">Читать далее</a>
		</div>
	</main>


<?php echo $footer; ?>

