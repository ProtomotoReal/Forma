<?php echo $header; ?>



<div class="container content-main">
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
<?php echo $footer; ?>
