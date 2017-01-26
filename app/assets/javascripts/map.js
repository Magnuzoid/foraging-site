var markers;
var geojsonMarkerOptions = {
    radius: 8,
    fillColor: "#ff7800",
    color: "#000",
    weight: 1,
    opacity: 1,
    fillOpacity: 0.8
};
var path = window.location.pathname;

$(function(){
  getMarkers();
});

function onEachFeature(feature, layer) {
  // does this feature have a property named popupContent?
  if (feature.properties && feature.properties.popupContent) {
      layer.bindPopup(feature.properties.popupContent);
  }
}

function getMarkers() {
  markers = $.getJSON( path ).done( function (response) {
      geojsonLayer = L.geoJson(response, {
        onEachFeature: onEachFeature,
        pointToLayer: function (feature, latlng) {
                        return L.circleMarker(latlng, geojsonMarkerOptions);
                      }
      }).addTo(map);
      map.fitBounds(geojsonLayer.getBounds());
    });

}

function autoSearch() {
  var searchField = $("#search"),
      searchForm = $("#lookup-form");

  searchField.on("keyup paste", function(e){
    //e.preventDefault();

    //if (searchField.val().length >= 2){
    searchForm.submit();
    //}
  });
}
