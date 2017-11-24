<?php echo $header; ?><?php echo $column_left; ?>
<div id="content">
    <div class="page-header">
        <div class="container-fluid">
            <div class="pull-right">
                <button type="submit" form="form" data-toggle="tooltip" title="<?php echo $button_apply; ?>" class="btn btn-primary"><i class="fa fa-save"></i></button>
                <a onclick="$('#form').attr('action', location + '&exit=true'); $('#form').submit()" data-toggle="tooltip" title="<?php echo $button_save; ?>" class="btn btn-default"><i class="fa fa-save"></i></a>
                <a href="<?php echo $cancel; ?>" data-toggle="tooltip" title="<?php echo $button_cancel; ?>" class="btn btn-default"><i class="fa fa-reply"></i></a>
            </div>

            <h1><?php echo $heading_title; ?></h1>
            <ul class="breadcrumb">
                <?php foreach ($breadcrumbs as $breadcrumb) { ?>
                <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
                <?php } ?>
            </ul>
        </div>
    </div>
    <div class="container-fluid">
        <?php if ($error_warning) { ?>
        <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
            <button type="button" class="close" data-dismiss="alert">&times;</button>
        </div>
        <?php } ?>
        <?php if ($success) { ?>
        <div class="alert alert-success"><i class="fa fa-check-circle"></i> <?php echo $success; ?>
            <button type="button" class="close" data-dismiss="alert">&times;</button>
        </div>
        <?php } ?>
        <div class="panel panel-default">
            <div class="panel-heading">
                <h3 class="panel-title"><i class="fa fa-pencil"></i> <?php echo $local_title; ?></h3>
            </div>

            <div class="panel-body">

                <form class="form-horizontal" action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form">

                    <div class="form-group">
                        <div class="col-sm-10">
                            <div class="row">
                                <?php echo $category; ?>
                            </div>
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-sm-10">
                            <div class="row">
                                <div class="col-sm-4">

                                    <select name="filter_option_id" id="filter_option_id" onchange="getOptionValues(this.value);" class="form-control">
                                        <option value="0" selected="selected"><?php echo $text_option_name; ?></option>
                                        <?php foreach ($options as $option) { ?>
                                        <option value="<?php echo $option['option_id']; ?>"><?php echo $option['name']; ?></option>
                                        <?php } ?>
                                    </select>

                                </div>
                                <div class="col-sm-4">
                                    <select name="filter_option_value_id" id="filter_option_value_id" class="form-control">
                                        <option value="0" selected="selected"><?php echo $text_option_value_name; ?></option>
                                    </select>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-sm-10">
                            <div class="row">
                                <div class="col-sm-4">
                                    <input type="text" value="" name="filter_model" class="form-control" placeholder="<?php echo $entry_model; ?>">
                                </div>
                                <div class="col-sm-4">
                                    <input type="text" value="" name="filter_sku" class="form-control" placeholder="<?php echo $entry_sku; ?>">
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-sm-10">
                            <div class="row">
                                <div class="col-sm-4">
                                    <?php echo $entry_price; ?>
                                    <?php echo $entry_min_price; ?> <input type="text" value="" name="filter_min_price" class="form-control" />
                                </div>
                                <div class="col-sm-4">
                                    <?php echo $entry_max_price; ?> <input type="text" value="" name="filter_max_price" class="form-control" />
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-sm-10">
                            <div class="row">
                                <div class="col-sm-4">
                                    <?php echo $entry_option_price; ?>
                                    <?php echo $entry_min_price; ?> <input type="text" value="" name="filter_min_option_price" class="form-control" />
                                </div>
                                <div class="col-sm-4">
                                    <?php echo $entry_max_price; ?> <input type="text" value="" name="filter_max_option_price" class="form-control" />
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-sm-10">
                            <div class="row">
                                <div class="col-sm-4">

                                    <select name="op" class="form-control"><option value="+">+</option><option value="-">-</option><option value="*">x</option><option value="/">/</option><option value="=">=</option></select>
                                </div>
                                <div class="col-sm-4">
                                    <input type="text" value="0" name="value" class="form-control">
                                </div>
                                <div class="col-sm-4">
                                    <select name="type" class="form-control"><option value="%">%</option><option value="+">число</option></select>
                                </div>
                            </div>
                        </div>
                    </div>

                    <?php echo $rnd; ?>

                </form>


            </div>
        </div>
    </div>
</div>

<script type="text/javascript"><!--
    $('#filter_group_id').change(function () {
        $('#filter_option_id').load('index.php?route=catalog/option/get_options&token=<?php echo $token; ?>&filter_group_id=' + $('#filter_group_id').val());
        $('#filter_option_value_id').load('index.php?route=catalog/option/option_value&token=<?php echo $token; ?>&option_id=0');

    });

    $('#filter_category_id').change(function () {
        var url = '';
        if ($('#filter_category_id').val() > 0) {
            url = url + '&filter_category_id=' + $('#filter_category_id').val();
        }

        if ($('#filter_manufacturer_id').val() > 0) {
            url = url + '&filter_manufacturer_id=' + $('#filter_manufacturer_id').val();
        }

        $('#filter_option_id').load('index.php?route=catalog/option/get_options&token=<?php echo $token; ?>' + url);
        $('#filter_option_value_id').load('index.php?route=catalog/option/option_value&token=<?php echo $token; ?>&option_id=0');

    });

    $('#filter_manufacturer_id').change(function () {
        var url = '';
        if ($('#filter_category_id').val() > 0) {
            url = url + '&filter_category_id=' + $('#filter_category_id').val();
        }

        if ($('#filter_manufacturer_id').val() > 0) {
            url = url + '&filter_manufacturer_id=' + $('#filter_manufacturer_id').val();
        }

        $('#filter_option_id').load('index.php?route=catalog/option/get_options&token=<?php echo $token; ?>' + url);
        $('#filter_option_value_id').load('index.php?route=catalog/option/option_value&token=<?php echo $token; ?>&option_id=0');

    });


    $('#filter_option_id').change(function () {
        $('#filter_option_value_id').load('index.php?route=catalog/option/option_value&token=<?php echo $token; ?>&option_id=' + $('#filter_option_id').val());
    });
    //--></script>

<?php echo $footer; ?>