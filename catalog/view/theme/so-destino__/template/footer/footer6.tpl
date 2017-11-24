
<footer class="footer-container typefooter-<?php echo isset($typefooter) ? $typefooter : '1'?>">
	
	<!-- FOOTER TOP -->

	<?php if ($footer_layout6) : ?>
	<div class="footer-main">

		<?php echo $footer_layout6; ?>

	</div>
	<?php endif; ?>

	<!-- FOOTER BOTTOM -->
	<div class="footer-bottom ">
		<?php if (isset($imgpayment_status) && $imgpayment_status != 0) : ?>
		<div class="col-sm-4 col-xs-12 payment-w">
			<?php
			if ((isset($imgpayment) && $imgpayment != '') ) { ?>
				<img src="image/<?php echo  $imgpayment ?>"  alt="imgpayment">
			<?php } ?>
		</div>
		<?php endif; ?>

		<?php $col_copyright = ($imgpayment_status) ? 'col-sm-8 col-xs-12 copyright' : 'col-sm-12'?>
		<div class="<?php echo $col_copyright;?>">
			<?php 
			$datetime = new DateTime();
			$cur_year	= $datetime->format('Y');
			echo (!isset($copyright) || !is_string($copyright) ? $powered : str_replace('{year}', $cur_year, html_entity_decode($copyright, ENT_QUOTES, 'UTF-8')));?>
		</div>
	</div>
</footer>