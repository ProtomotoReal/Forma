<?php echo $header; ?>

<?php if ( in_array($information_id, array(7,14,15,16,17)))  {
 		$wide_article = true;
	}else{
		$wide_article = false;
	}
?>

<?php if (!$wide_article) { ?>
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

<div class="container-fluid content-main">
	<div class="<?php echo ($column_left || $column_right ? 'row' : ''); ?>">
		<?php echo $column_left; ?>
		<?php if ($column_left && $column_right) { ?>
		<?php $class = 'col-sm-6'; ?>
		<?php } elseif ($column_left || $column_right) { ?>
		<?php $class = 'col-sm-9'; ?>
		<?php } else { ?>
		<?php $class = ''; ?>
		<?php } ?>
		<div id="content" class="<?php echo $class; ?>">

			<div class="<?php echo ($column_left || $column_right ? '' : 'container'); ?>">

				<?php echo $content_top; ?>
				<?php echo $description; ?>
			</div>
			<?php echo $content_bottom; ?>
		</div>
		<?php echo $column_right; ?>
	</div>
</div>




<?php } else { ?>
<?php echo $content_top; ?>
<?php echo $description; ?>

<?php } ?>

<?php echo $footer; ?>


