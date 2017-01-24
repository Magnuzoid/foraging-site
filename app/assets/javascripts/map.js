var marker,
    results,
    markertitle,
    markerdescription,
    markeruser,
    mLat, mLng;

function autoSearch() {
  var searchField = $("#search");
  searchField.on("keyup paste", function(e){
    //if (searchField.val().length >= 2){
      $("#lookup-form").submit();
    //}
  });
}
