<?php echo $header; ?>
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
<div class="container contacts content-main">
 
<div class="main">
   
    <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>
  
     <?php if ($image) { ?>
    <div id="map-canvas"><img src="<?php echo $image; ?>" alt="<?php echo $store; ?>" title="<?php echo $store; ?>" /></div>
    <?php } ?>
      <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBf-EZpcLV72omKDDxOlhG6-i8Ga8NenRo"></script>
          <script>



			  function setMarkers(map) {

				  var infowindow = new google.maps.InfoWindow();

				  var image = {
					  url: '/catalog/view/theme/extra/images/map-marker.png',
					  size: new google.maps.Size(59, 89),
					  origin: new google.maps.Point(0, 0),
					  anchor: new google.maps.Point(30, 89)
				  };

				  var shape = {
					  coords: [1, 1,   1, 59,   59, 89,   59, 1],
					  type: 'poly'
				  };

				  var markersData = [

						  ['Ростов-на-Дону, ул. Малиновского 25', 47.230789, 39.609666 , 10],
						  ['Ростов-на-Дону, ул. Таганрогская, 116',47.258452, 39.648556 , 10],
						  ['Ростов-на-Дону, ул. Московская, 43/13 ', 47.217466, 39.708204 , 10],
						  ['Ростов-на-Дону, ул. Пойменная, 1 ', 47.204019, 39.723344 , 10],
						  ['Ростов-на-Дону, пр. Космонавтов, 2/2', 47.280417, 39.718113 , 10],
						  ['Ростов-на-Дону, пр. Стачки, 25, ТЦ «Сокол» ', 47.210661, 39.672138 , 10],
						  ['Ростов-на-Дону, ул. Зорге, 31', 47.227958, 39.628910 , 10],
						  ['г. Новочеркасск, пер. Магнитный, 1, 1 этаж ', 47.425223, 40.054801 , 10],
						  ['г. Шахты, пер. Красный Шахтер 78, ТЦ «Максимум», 2 этаж ', 47.706855, 40.216709 , 10],
						  ['г. Таганрог, пл. Мира, 7, ТРЦ «Мармелад», 3 этаж  ', 47.217512, 38.898943 , 10],
						  ['Гуково, ул. Шахтерская 50, ', 48.058048, 39.941857 , 10]

				  ];

				  for (var i = 0; i < markersData.length; i++) {
					  var markerData = markersData[i];
					  var marker = new google.maps.Marker({
						  position: {lat: markerData[1], lng: markerData[2]},
						  map: map,
						  icon: image,
						  shape: shape,
						  zIndex: markerData[3]
					  });


					  google.maps.event.addListener(marker, 'mouseover', (function(marker, i) {
						  return function() {
							  //map.setCenter(new google.maps.LatLng(marker.position.lat(), marker.position.lng()));
							  //map.setZoom(10);
							  infowindow.setContent(markersData[i][0]);
							  infowindow.open(map, marker);
						  }
					  })(marker, i));
				  }

			  }


			  function initialize() {
              var myLatlng = new google.maps.LatLng(47.230789, 39.609666);
              var mapOptions = {
                zoom: 13,
                zoomControl: true,
                scaleControl: true,
                scrollwheel: true,
                disableDoubleClickZoom: true,
                center: myLatlng
              };
              var map = new google.maps.Map(document.getElementById('map-canvas'), mapOptions);
//              var marker = new google.maps.Marker({
//                  position: myLatlng,
//                  map: map,
//                  title: ''
//              });
				  setMarkers(map);
            } 
            google.maps.event.addDomListener(window, 'load', initialize);  
          </script>

	</div></div></div></div>

			<div id="shops-list">

				<div class="city"><span>Ростов-на-Дону</span></div>
				<div class="addresses">
					ул. Малиновского 25, ТЦ «Золотой Вавилон»<br/>
					ул. Таганрогская, 116<br/>
					ул. Московская, 43/13<br/>
					ул. Пойменная, 1<br/>
					пр. Космонавтов, 2/2<br/>
					пр. Стачки, 25, ТЦ «Сокол»<br/>
					ул. Зорге, 31
				</div>


				<div class="city"><span>Новочеркасск</span></div>
				<div class="addresses">
					пер. Магнитный, 1
				</div>

				<div class="city"><span>Шахты</span></div>
				<div class="addresses">
					пер. Красный Шахтер 78, ТЦ «Максимум»
				</div>

				<div class="city"><span>Таганрог</span></div>
				<div class="addresses">
					пл. Мира, 7, ТРЦ «Мармелад»
				</div>

				<div class="city"><span>Гуково</span></div>
				<div class="addresses">
					ул. Шахтерская 50
				</div>

			</div>
          <div id="map-canvas"></div>
	<div class="container"><div class="main"><div class="row"><div class="col-sm-12">

      <div class="info-contact row">
        <div class="col-sm-4 col-xs-12 info-store">
      <div class="name-store"><h3><?php echo $store; ?></h3></div>
      <?php if ($comment) { ?>
        <div class="comment">
        <?php echo $comment; ?></div>
      <?php } ?>
      <address>
      <div class="address clearfix form-group"><div class="pull-left"><i class="fa fa-home"></i></div><div class="text"><?php echo $address; ?></div></div>
      <div class="form-group"><div class="pull-left"><i class="fa fa-phone"></i></div><div class="text"><?php echo $telephone; ?></div></div>
      <?php if ($fax) { ?>
      <div class="form-group"><div class="pull-left"><i class="fa fa-fax"></i></div><div class="text"><?php echo $fax; ?></div></div>
      <?php } ?>
      <?php if ($open) { ?>
      <div class="form-group"><div class="pull-left"><i class="fa fa-clock-o"></i></div><div class="text"><?php echo $text_open; ?> <?php echo $open; ?></div>  </div>
      <?php } ?>
      <?php if ($geocode) { ?>
              <a href="https://maps.google.com/maps?q=<?php echo urlencode($geocode); ?>&hl=<?php echo $geocode_hl; ?>&t=m&z=15" target="_blank" class="btn btn-info"><i class="fa fa-map-marker"></i> <?php echo $button_map; ?></a>
              <?php } ?>
      </address>
       
        </div>
        <div class="col-lg-8 col-sm-8 col-xs-12 contact-form">
           <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" class="form-horizontal">
            <fieldset>
              <legend><?php echo $text_contact; ?></h2></legend>
              <div class="form-group required">
                <label class="col-sm-2 control-label" for="input-name"><?php echo $entry_name; ?></label>
                <div class="col-sm-10">
                  <input type="text" name="name" value="<?php echo $name; ?>" id="input-name" class="form-control" />
                  <?php if ($error_name) { ?>
                  <div class="text-danger"><?php echo $error_name; ?></div>
                  <?php } ?>
                </div>
              </div>
              <div class="form-group required">
                <label class="col-sm-2 control-label" for="input-email"><?php echo $entry_email; ?></label>
                <div class="col-sm-10">
                  <input type="text" name="email" value="<?php echo $email; ?>" id="input-email" class="form-control" />
                  <?php if ($error_email) { ?>
                  <div class="text-danger"><?php echo $error_email; ?></div>
                  <?php } ?>
                </div>
              </div>
              <div class="form-group required">
                <label class="col-sm-2 control-label" for="input-enquiry"><?php echo $entry_enquiry; ?></label>
                <div class="col-sm-10">
                  <textarea name="enquiry" rows="10" id="input-enquiry" class="form-control"><?php echo $enquiry; ?></textarea>
                  <?php if ($error_enquiry) { ?>
                  <div class="text-danger"><?php echo $error_enquiry; ?></div>
                  <?php } ?>
                </div>
              </div>
              <?php echo $captcha; ?>
            </fieldset>
            <div class="buttons">
              <div class="pull-right">
                <button class="btn btn-info" type="submit"><span><?php echo $button_submit; ?></span></button>
              </div>
            </div>
          </form>
        </div>
     
      </div>
</div>
      <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>
<?php echo $footer; ?>
