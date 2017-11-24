<?php if ($show_product_groups) { ?>
    <div class="col-sm-4">
        <select name="filter_group_id" id="filter_group_id" class="form-control">
            <option value="0" selected="selected"><?php echo $text_group; ?></option>
            <?php foreach ($groups as $group) {
                                    if ($group['status'] == 1) {
                                    ?>
            <option value="<?php echo $group['group_id']; ?>"><?php echo $group['name']; ?></option>
            <?php
                                    }
                                            }
                                            ?>
        </select>
    </div>
<?php } else { ?>
    <div class="col-sm-4">
        <select name="filter_category_id" id="filter_category_id" class="form-control">
            <option value="0" selected="selected"><?php echo $text_category; ?></option>
            <?php foreach ($categories as $category) { ?>
            <option value="<?php echo $category['category_id']; ?>"><?php echo $category['name']; ?></option>
            <?php } ?>
        </select>
    </div>

    <div class="col-sm-4">
        <select name="filter_manufacturer_id" id="filter_manufacturer_id" class="form-control">
            <option value="0" selected="selected"><?php echo $text_manufacturer; ?></option>
            <?php foreach ($manufacturers as $manufacturer) { ?>
            <option value="<?php echo $manufacturer['manufacturer_id']; ?>"><?php echo $manufacturer['name']; ?></option>
            <?php } ?>
        </select>
    </div>
<?php } ?>