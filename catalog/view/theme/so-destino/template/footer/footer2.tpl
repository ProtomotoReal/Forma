
<footer class="footer-container typefooter-<?php echo isset($typefooter) ? $typefooter : '1'?>">
	<!-- FOOTER CENTER -->
	<?php if ($footertop) : ?>
	<div class="footer-top">
		<div class="container">
			<div class="row">
				<div class="col-xs-12">
				<?php echo $footertop; ?>
				</div>
			</div>
		</div> 
	</div>
	<?php endif; ?>

	<!-- FOOTER TOP -->
	<div class="footer-center">
		<div class="container content">
			
			<!-- BOX ABOUT -->
			<div class="box-footer1 contact-us">
				<?php echo $footer_block1; ?>
			</div>

			<!-- BOX ACCOUNT -->
			<div class="box-account box-footer">
				<div class="module clearfix">
					<h3 class="modtitle"><?php echo $text_account; ?></h3>
					<div class="modcontent" >
						<ul class="menu">
							<li><a href="<?php echo $manufacturer; ?>"><?php echo $text_manufacturer; ?></a></li>
							<li><a href="<?php echo $voucher; ?>"><?php echo $text_voucher; ?></a></li>
							<li><a href="<?php echo $affiliate; ?>"><?php echo $text_affiliate; ?></a></li>
							<li><a href="<?php echo $special; ?>"><?php echo $text_special; ?></a></li>
						</ul>
					</div>
				</div>
			</div>
			<!-- BOX INFORMATION -->
			<?php if ($informations) : ?>
			<div class="box-information box-footer">
				<div class="module clearfix">
					<h3 class="modtitle"><?php echo $text_information; ?></h3>
					<div  class="modcontent" >
						<ul class="menu">
							<?php foreach ($informations as $information) { ?>
							<li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
							<?php } ?>
						</ul>
					</div>
				</div>
			</div>
			<?php endif; ?>
			<!-- BOX SERVICE -->
			<div class="box-service box-footer">
				<h3 class="modtitle"><?php echo $text_service; ?></h3>
				<div  class="modcontent" >
			        <ul class="menu">
			          <li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
			          <li><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li>
			          <li><a href="<?php echo $sitemap; ?>"><?php echo $text_sitemap; ?></a></li>
			        </ul>
			    </div>
		    </div>		
	
		</div>
	</div>
	
	

	<!-- FOOTER BOTTOM -->
	<div class="footer-bottom ">
		<div class="container">
			<div class="row">
				<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
					<?php echo $footer_block2; ?>
				</div>
				<div class="col-lg6 col-md-6 col-sm-12 col-xs-12">
					<?php if (isset($imgpayment_status) && $imgpayment_status != 0) : ?>
					<div class="text-right">
						<?php
						if ((isset($imgpayment) && $imgpayment != '') ) { ?>
							<img src="image/<?php echo  $imgpayment ?>"  alt="imgpayment">
						<?php } ?>
					</div>
					<?php endif; ?>
					<div class="copyright">
						<?php 
						$datetime = new DateTime();
						$cur_year	= $datetime->format('Y');
						echo (!isset($copyright) || !is_string($copyright) ? $powered : str_replace('{year}', $cur_year, html_entity_decode($copyright, ENT_QUOTES, 'UTF-8')));?>
					</div>
				</div>

			</div>
		</div>
	</div>
</footer>