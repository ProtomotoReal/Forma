<?php 
$devices = array('lg' => ' Desktops','md' => ' Desktops','sm' => ' Tablets','xs' => ' Phones',);
$soconfig_pages= array('catalog_column_lg'=>'3','catalog_column_md'=>'3','catalog_column_sm'=>'2',);

?>
<?php echo $header; ?>
<div class="layout-3">
	<div class="breadcrumbs">
	  <div class="container">
	      <div class="current-name">
	        <?php
	        $last = count($breadcrumbs);
	        $i = 0;
	         foreach ($breadcrumbs as $breadcrumb => $crumbInfo) : 
	          $i++;
	        ?>
	          <?php if ($i==$last) : ?>
	            <?php echo $crumbInfo['text']; ?>
	          <?php  endif;  ?>
	        <?php endforeach; ?>
	      </div>
	      <ul class="breadcrumb">
	        <?php 
	        foreach ($breadcrumbs as $breadcrumb) { ?>
	        <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
	        <?php } ?>
	      </ul>
	    </div>
	</div>
    <div class="container content-main">
        
        <div class="row">
            <?php echo $column_left; ?>
            <?php if ($column_left && $column_right) { ?>
                <?php $class = 'col-sm-6'; ?>
            <?php } elseif ($column_left || $column_right) { ?>
                <?php $class = 'col-md-9 col-sm-12'; ?>
            <?php } else { ?>
                <?php $class = 'col-sm-12'; ?>
            <?php } ?>
            
            <div id="content" class="<?php echo $class; ?>">
                <?php echo $content_top; ?>
				<?php if ((isset($error_no_database) && $error_no_database == '')) { ?>
                <div class="blog-header">
					<h3><?php echo $heading_title; ?></h3>
					<?php echo (isset($description) && !empty($description)) ? $description: ''; ?>
				</div>
                <!-- Filters -->
				<div class="product-filter product-filter-top filters-panel" style="float: left; width: 100%;">
					<div class="row">
						<div class="col-md-2 hidden-sm hidden-xs">
							<div class="view-mode">
								<div class="list-view">
									<button class="btn btn-default grid active" data-view="grid" ><i class="fa fa-th-large"></i></button>
									<button class="btn btn-default list " data-view="list"><i class="fa fa-th-list"></i></button>
								</div>
							</div>
						</div>
						<div class="col-md-10"><div class="pull-right"><?php echo $pagination; ?></div></div>
					</div>
				</div>
				<!-- //end Filters -->
                <div class="blog-listitem">
                    <?php if($articles) { ?>
                        <?php foreach($articles as  $id_article => $article) { ?>                            
                        <div class="blog-item col-md-4 col-sm-4">
                        	<div class="blog-item-inner">
								<?php if($article['image']) { ?>
								<div class="itemBlogImg left-block col-sm-12">
									<div class="article-image banners ">
										<div>
											<a  class="11popup-gallery" href="<?php echo $article['href']; ?>"><img  src="<?php echo $article['image']; ?>" alt="<?php echo $article['article_title']; ?>" /></a>
										</div>
									</div>
								</div>
								<?php } ?>
								<div class="itemBlogContent right-block col-sm-12">
									<div class="blog-date">
										<span class="article-date" >										    
										    <?php echo $article['date_added'];?>
										</span>
									</div>
									<div class="blog-content">
										<!-- NAME TITLE-->
										<div class="article-title" style="min-height: 85px;">
											<h4><a href="<?php echo $article['href']; ?>"><?php echo ucwords($article['article_title']); ?></a></h4>
										</div>
										<!-- DESCRIP -->
										<p class="article-description" >
											 <?php echo $article['description'];?>
										</p>
										<!-- COMMENT -->
								  		<div class="blog-meta">
								  			<span class="author hidden"><i class="fa fa-user"></i><span><?php echo $text_posted_by; ?></span><?php echo $article['author_name']; ?></span>
											<?php if($article['allow_comment']) { ?>
												<span class="comment_count"><i class="fa fa-comments"></i><a href="<?php echo $article['comment_href']; ?>#comment-section"><?php echo $article['total_comment']; ?></a></span>
											<?php } ?>																							
										</div>
										<a class="btn-viewmore pull-right" href="<?php echo $article['href']; ?>"><?php echo $button_continue_reading; ?><i class="fa fa-arrow-circle-right"></i></a>
									</div>		
								 
								</div>
                            </div>                                                            
                        </div>
						<?php 
							// foreach ($devices as $subfix => $device) {
							// $id = $id_article+1;
							// 	if(isset($soconfig_pages["catalog_column_".$subfix]) && $soconfig_pages["catalog_column_".$subfix] !=''){
							// 		if(($id  % $soconfig_pages["catalog_column_".$subfix]) == 0) {
							// 			$id = 1;
							// 			echo '<div class="clearfix visible-'.$subfix.'-block"></div>';
										
							// 		}	
							// 	}				
							// }
						?>
						
                        <?php } ?>
                        
                       
                           
                    <?php } else { ?>
                        <div class="col-xs-12">
							<h3 class="text-center"><?php echo $text_no_found; ?></h3>
						</div>
                    <?php } ?>
                </div> 
				
                <!-- Filters -->
				<div class="product-filter product-filter-bottom filters-panel clearfix" >
					<div class="row">
						<div class="col-md-2 hidden-sm hidden-xs">
							<div class="view-mode">
								<div class="list-view">
									<button class="btn btn-default grid active" data-view="grid" ><i class="fa fa-th-large"></i></button>
									<button class="btn btn-default list " data-view="list"><i class="fa fa-th-list"></i></button>
								</div>
							</div>
						</div>
						<div class="col-md-10"><div class="pull-right"><?php echo $pagination; ?></div></div>
					</div>
				</div>
				<!-- //end Filters -->
				<?php }else{?>
					<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i>
					<?php echo $error_no_database; ?>
				</div>
				<?php } ?>
				
                <?php echo $content_bottom; ?>
            </div>            
            
            <?php echo $column_right; ?>
        </div>        
    </div>    
<?php echo $footer; ?>

<script type="text/javascript"><!--
function display(view) {
	$('.blog-listitem').removeClass('list grid').addClass(view);
	$('.list-view .btn').removeClass('active');
	if(view == 'list') {
		$('.blog-listitem .blog-item').addClass('col-lg-12');
		$('.blog-listitem .blog-item .left-block').addClass('col-md-5');
		$('.blog-listitem .blog-item .right-block').addClass('col-md-7');
		//$('.blog-listitem .blog-item .article-description').removeClass('hidden')
		$('.list-view .' + view).addClass('active');
		$.cookie('simple_blog_category', 'list'); 
	}else{
		$('.blog-listitem .blog-item').removeClass('col-lg-12');
		$('.blog-listitem .blog-item .left-block').removeClass('col-md-5');
		$('.blog-listitem .blog-item .right-block').removeClass('col-md-7');
		//$('.blog-listitem .blog-item .article-description').addClass('hidden');
		$('.list-view .' + view).addClass('active');
		$.cookie('simple_blog_category', 'grid');
	}
}


$(document).ready(function () {
	// Check if Cookie exists
	if($.cookie('simple_blog_category')){
		view = $.cookie('simple_blog_category');
	}else{
		view = 'grid';
	}
	if(view) display(view);
	
	// Click Button
	$('.list-view .btn').each(function() {
		var ua = navigator.userAgent,
		event = (ua.match(/iPad/i)) ? 'touchstart' : 'click';
		$(this).bind(event, function() {
			$(this).addClass(function() {
				if($(this).hasClass('active')) return ''; 
				return 'active';
			});
			$(this).siblings('.btn').removeClass('active');
			$catalog_mode = $(this).data('view');
			display($catalog_mode);
		});
		
	});
});

//--></script>
</div>