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
    <h3 class="panel-title"><i class="fa fa-pencil"></i> <?php echo $text_edit; ?></h3>
</div>



<div class="panel-body">

    <ul class="nav nav-tabs">
        <li class="active"><a href="#tab-general" data-toggle="tab"><?php echo $tab_general; ?></a></li>
        <li><a href="#tab-log" data-toggle="tab"><?php echo $tab_log; ?></a></li>
        <li><a href="#tab-license" data-toggle="tab"><?php echo $tab_license; ?></a></li>
    </ul>

    <div class="tab-content">

        <div class="tab-pane active" id="tab-general">

            <table class="table table-bordered table-hover">
                <thead>
                <tr>
                    <td class="text-left" width="90%"><?php echo $column_title; ?></td>
                    <td class="text-right"><?php echo $column_action; ?></td>
                </tr>
                </thead>
                <tbody>
                <?php if ($methods) { ?>
                <?php foreach ($methods as $method) { ?>
                <tr>
                    <td class="text-left" width="70%"><?php echo $method['title']; ?></td>
                    <td class="text-right">
                        <nobr>[ <a href="<?php echo $method['action']; ?>"><?php echo $button_edit; ?></a> ]</nobr>
                    </td>
                </tr>
                <?php } ?>
                <?php } ?>
                </tbody>
            </table>

        </div>


        <div class="tab-pane" id="tab-log">
            <div class="form-group">
                <textarea wrap="off" rows="15" readonly class="form-control"><?php echo $log; ?></textarea>
            </div>

            <form class="form-horizontal" action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form_clear">
                 <button style="margin-right: 10px;" type="button" onclick="$('#form_clear').attr('action', '<?php echo $clear;?>' ); $('#form_clear').submit();" class="btn btn-primary pull-left"><i class="fa fa-trash"></i> <?php echo $button_clear; ?></button>
            </form>

        </div>


        <div class="tab-pane" id="tab-license">

            <div class="form-group">
                <div class="col-sm-10">
                    <div class="row">
                        <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form">
                            <h3><?php echo $entry_key; ?></h3>
                                <input type="text" name="<?php echo $name; ?>_license" size="50" value="<?php echo ${$name.'_license'}; ?>" style="width: 90%"/>
                            <br/><button style="margin-right: 10px;" type="button" onclick="$('form#form').submit()" class="btn btn-primary pull-left"><i class="fa fa-save"></i> <?php echo $button_save; ?></button>
                        </form>
                    </div>
                </div>
            </div>

            <div class="form-group">
                <div class="col-sm-10">
                    <div class="row">
                        <br/><?php echo $text_notice; ?>
                    </div>
                </div>
            </div>
        </div>

    </div>
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