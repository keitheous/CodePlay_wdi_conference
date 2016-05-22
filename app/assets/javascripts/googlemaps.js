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
    map: map
  });

  marker.addListener('mouseover',function() {
    infowindow.open(map, marker);
  });
  marker.addListener('mouseout', function() {
    infowindow.close();
  });
}

