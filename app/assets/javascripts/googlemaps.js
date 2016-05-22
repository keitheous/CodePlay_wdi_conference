var gaLocation = {lat: -37.81853869, lng: 144.95903134};
function initMap() {
  var mapDiv = document.getElementById('map');
  var map = new google.maps.Map(mapDiv, {
    center: gaLocation,
    zoom: 18
  });

  var contentString = "<div id='map-marker-info'>General Assembly</div>";
  var infowindow = new google.maps.InfoWindow({
    content: contentString
  });
  var marker = new google.maps.Marker({
    position: gaLocation,
    url: 'https://www.google.com.au/maps/place/45+William+St,+Melbourne+VIC+3000/@-37.818111,144.9570576,17z/data=!3m1!4b1!4m5!3m4!1s0x6ad65d4ce20528e5:0xd989acb313fcb5b2!8m2!3d-37.818111!4d144.959246',
    map: map
  });

  marker.addListener('mouseover',function() {
    infowindow.open(map, marker);
  });
  marker.addListener('mouseout', function() {
    infowindow.close();
  });
  marker.addListener('click',function() {
    window.open(marker.url,'_blank');
  });
}

