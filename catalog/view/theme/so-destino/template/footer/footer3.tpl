
<style>
	.fah:hover{
		color: #000;
		border-bottom:1px solid #000;
	}
</style>

<?php if ($footer_top1) { ?>
	<div class="container">
		<?php echo $footer_top1; ?>
	</div>
<?php } ?>

<footer>

	<div class="container">
		<div class="wrapper">
		<div class="row">

			<div class="col-lg-2 col-md-2 col-sm-2 col-xs-12">
				<div class="info">
					<a href="/our-shops"><i class="fa fa-map-marker"></i><span>Пункты самовывоза</span></a>
					<a href="/partneram"><i class="fa fa-suitcase"></i><span>Партнерам</span></a>
				</div>
			</div>

			<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
				<h5>Сервис и поддержка</h5>
				<nav>
					<a href="/kak-sdelat-zakaz"><span class="fah">Как сделать заказ</span></a>
					<a href="/terms"><span class="fah">Возврат товара</span></a>
					<a href="/publichnaya-oferta"><span class="fah">Публичная оферта</span></a>
					<a href="/dostavka"><span class="fah">Доставка</span></a>
					<a href="/sposobi-oplati"><span class="fah">Способы оплаты</span></a>
					<a href="/pravila-prodaji"><span class="fah">Правила продажи</span></a>
					<a href="/vozvrat-denezhnyh-sredstv"><span class="fah">Возврат денежных средств</span></a>
					<a href="/faq"><span class="fah">Вопросы и ответы</span></a>
				</nav>
			</div>

			<div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
				<h5>О компании</h5>
				<nav>
					<a href="/index.php?route=information/information&information_id=4"><span class="fah">О нас</span></a>
					<a href="/index.php?route=information/contact"><span class="fah">Контакты</span></a>
					<a href="/vakansii" ><span class="fah">Вакансии</span></a>
					<a href="/partneram"><span class="fah">Партнерам</span></a>
					<a href="/sertifikati"><span class="fah">Сертификаты</span></a>
					<a href="/preimushestva"><span class="fah">Преимущества</span></a>
					<a href="/nashi-skidki"><span class="fah">Наши скидки</span></a>
				</nav>
			</div>

			<div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
				<div class="social">
					<h5>Следуйте за нами</h5>
					<a href="https://vk.com/kapusta_junior" target="_blank" class="fa fa-vk"></a>
					<a href="https://www.facebook.com/groups/148691369037207" target="_blank" class="fa fa-facebook"></a>
					<a href="#" class="fa fa-twitter"></a>
					<a href="#" class="fa fa-instagram"></a>
					<a href="#" class="fa fa-google-plus"></a>
					<a href="https://ok.ru/kapustajunior?st._aid=ExternalGroupWidget_OpenGroup" target="_blank" class="fa fa-odnoklassniki"></a>
					<a href="#" class="fa fa-youtube-play"></a>
				</div>
			</div>


		</div>

		</div>

	</div>

	<!-- FOOTER BOTTOM -->
	<div class="footer-bottom ">
		<div class="container">
			<div class="row">
				<?php $col_copyright = ($imgpayment_status) ? 'col-sm-8 copyright' : 'col-sm-12'?>
				<div class="<?php echo $col_copyright;?>">
					<?php
					$datetime = new DateTime();
					$cur_year	= $datetime->format('Y');
					echo (!isset($copyright) || !is_string($copyright) ? $powered : str_replace('{year}', $cur_year, html_entity_decode($copyright, ENT_QUOTES, 'UTF-8')));?>
				</div>

				<?php if (isset($imgpayment_status) && $imgpayment_status != 0) : ?>
				<div class="col-sm-4 text-right">
					<?php
					if ((isset($imgpayment) && $imgpayment != '') ) { ?>
					<img src="image/<?php echo  $imgpayment ?>"  alt="imgpayment">
					<?php } ?>
				</div>
				<?php endif; ?>

			</div>
		</div>
	</div>
</footer>


<!-- bxSlider Javascript file -->
<?php /*

<script src="/catalog/view/css/slider/jquery.bxslider.min.js"></script>

*/ ?>
<!-- браузерные префиксы -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/prefixfree/1.0.7/prefixfree.min.js"></script>
<!-- JS -->
<script src="/catalog/view/css/js/1.js"></script>

