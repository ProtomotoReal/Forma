<?php echo $header; ?><?php echo $column_left; ?>
<div id="content">
<div class="page-header">
    <div class="container-fluid">
        <h1><?php echo $heading_title; ?></h1>
        <ul class="breadcrumb">
            <?php foreach ($breadcrumbs as $breadcrumb) { ?>
            <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
            <?php } ?>
        </ul>
    </div>
</div>
<div class="container-fluid">
    <div class="panel panel-default">
        <div class="panel-heading">
            <h3 class="panel-title"><i class="fa fa-pencil"></i> <?php echo $local_title; ?></h3>
        </div>

        <div class="panel-body">
            <big><?php echo $text_notice; ?></big>
        </div>
    </div>
</div>
</div>

<script type="text/javascript"><!--
    $('.date').datetimepicker({
        pickTime: false
    });

    $('.time').datetimepicker({
        pickDate: false
    });

    $('.datetime').datetimepicker({
        pickDate: true,
        pickTime: true
    });
    //--></script>

<script type="text/javascript"><!--
    function getOptionValues(val) {
        if (val > 0) {
            $('#filter_option_value_id').load('index.php?route=catalog/option/option_value&token=<?php echo $token; ?>&option_id=' + val);
        }
    }
    //--></script>

<?php echo $footer; ?>