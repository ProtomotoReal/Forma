<?php 
require_once(DIR_SYSTEM . 'soconfig/classes/soconfig.php');
if(isset($registry)){$this->soconfig = new Soconfig($registry);}
?>
	<?php 
	//Select Type Of Footer
	if(isset($typefooter)){
		$footer_alert = '<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> Pleases Create Position Footer</div>';
		switch ($typefooter) {
		case "1":
			$footer1 = DIR_TEMPLATE.$theme.'/template/footer/footer1.tpl';
			if (file_exists($footer1)) include($footer1);
			else echo $footer_alert;
			break;
			include(DIR_TEMPLATE.$theme.'/template/footer/footer1.tpl');break;
		case "2":
			$footer2 = DIR_TEMPLATE.$theme.'/template/footer/footer2.tpl';
			if (file_exists($footer2)) include($footer2);
			else echo $footer_alert;
			break;
		case "3":
			$footer3 = DIR_TEMPLATE.$theme.'/template/footer/footer3.tpl';
			if (file_exists($footer3)) include($footer3);
			else echo $footer_alert;
			break;
		case "4":
			$footer4 = DIR_TEMPLATE.$theme.'/template/footer/footer4.tpl';
			if (file_exists($footer4)) include($footer4);
			else echo $footer_alert;
			break;
		case "5":
			$footer5 = DIR_TEMPLATE.$theme.'/template/footer/footer5.tpl';
			if (file_exists($footer5)) include($footer5);
			else echo $footer_alert;
			break;
		case "6":
			$footer5 = DIR_TEMPLATE.$theme.'/template/footer/footer6.tpl';
			if (file_exists($footer5)) include($footer5);
			else echo $footer_alert;
			break;
		case "7":
			$footer5 = DIR_TEMPLATE.$theme.'/template/footer/footer7.tpl';
			if (file_exists($footer5)) include($footer5);
			else echo $footer_alert;
			break;
		case "8":
			$footer5 = DIR_TEMPLATE.$theme.'/template/footer/footer8.tpl';
			if (file_exists($footer5)) include($footer5);
			else echo $footer_alert;
			break;
					
		}
	}else{
		include(DIR_TEMPLATE.$theme.'/template/footer/footer1.tpl');
	}
	?>
	
	<?php if(isset($backtop) && $backtop== 1):?>
		<!-- MENU ON TOP CUSTOM -->
		<div class="back-to-top"><i class="fa fa-angle-up"></i></div>
		<!-- END-->
	<?php endif; ?>
	
	
	<?php if ( $social_fb_status || $social_twitter_status || $social_custom_status ) : ?>
	<!-- Social widgets -->
	<section class="social-widgets visible-lg">
		<ul class="items">
			<?php if (isset($social_fb_status) && $social_fb_status) : ?>
			<li class="item item-01 facebook">
				<a href="catalog/view/theme/<?php echo $theme ?>/template/social/facebook.php?account=<?php echo $facebook; ?>" class="tab-icon"><span class="fa fa-facebook"></span></a>
				<div class="tab-content">
					<div class="title"><h5>FACEBOOK</h5></div>
					<div class="loading">
						<img src="catalog/view/theme/<?php echo $theme ?>/images/ajax-loader.gif" class="ajaxloader" alt="loader">
					</div>
				</div>
			</li>
			<?php endif; ?>

			<?php if (isset($social_twitter_status) && $social_twitter_status ) : ?>
			<li class="item item-02 twitter">
				<a href="catalog/view/theme/<?php echo $theme ?>/template/social/twitter.php?account_twitter=<?php echo $twitter; ?>" class="tab-icon"><span class="fa fa-twitter"></span></a>
				<div class="tab-content">
					<div class="title"><h5>TWITTER FEEDS</h5></div>
					<div class="loading">
						<img src="catalog/view/theme/<?php echo $theme ?>/images/ajax-loader.gif" class="ajaxloader" alt="loader">
					</div>
				</div>
			</li>
			<?php endif; ?>

			<?php if (isset($social_custom_status) && $social_custom_status) : ?>
			<li class="item item-03 youtube">
				<div class="tab-icon"><span class="fa fa-youtube"></span></div>
				<div class="tab-content">
					<div class="loading">
						<?php
							if (isset($video_code) && is_string($video_code)) {
								echo html_entity_decode($video_code , ENT_QUOTES, 'UTF-8');
							} else {echo 'Pleases Add Custom Wickget';}
						?>
						
					</div>
				</div>
			</li>
			<?php endif; ?>
		</ul>
	</section>
	<!-- //end Social widgets -->
	<?php endif; ?>

<!-- Yandex.Metrika counter -->
<script type="text/javascript" >
	(function (d, w, c) {
		(w[c] = w[c] || []).push(function() {
			try {
				w.yaCounter46523775 = new Ya.Metrika({
					id:46523775,
					clickmap:true,
					trackLinks:true,
					accurateTrackBounce:true,
					webvisor:true,
					ecommerce:"dataLayer"
				});
			} catch(e) { }
		});

		var n = d.getElementsByTagName("script")[0],
				s = d.createElement("script"),
				f = function () { n.parentNode.insertBefore(s, n); };
		s.type = "text/javascript";
		s.async = true;
		s.src = "https://mc.yandex.ru/metrika/watch.js";

		if (w.opera == "[object Opera]") {
			d.addEventListener("DOMContentLoaded", f, false);
		} else { f(); }
	})(document, window, "yandex_metrika_callbacks");
</script>
<noscript><div><img src="https://mc.yandex.ru/watch/46523775" style="position:absolute; left:-9999px;" alt="" /></div></noscript>
<!-- /Yandex.Metrika counter -->
    </div>
</body>
</html>
