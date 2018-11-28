
const initMap = () => {
    // Create a map object and specify the DOM element for display.
    const mapElement = document.getElementById("map")
    const map = new google.maps.Map(mapElement, {
      center: {lat: 52.5206, lng: 13.4098},
      scrollwheel: false,
      mapTypeId: 'satellite',
      zoom: 2

    });

    const locations = JSON.parse(mapElement.dataset.markers);

    const markers = locations.map(function(location, i) {
              return new google.maps.Marker({
                position: location,
              });
            });

    const markerCluster = new MarkerClusterer(map, markers, {imagePath:'https://developers.google.com/maps/documentation/javascript/examples/markerclusterer/m'});

}

export { initMap }
