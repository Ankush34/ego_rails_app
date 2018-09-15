var AppLayoutView = Marionette.LayoutView.extend({
	template: JST['home_page_layout'],
	regions: {
		main_layout: "#home_page_layout_part2",
	  map_view_layout: "#home_page_layout_part3",
    service_view_layout: "#home_page_layout_part4"
  },
	ui: {
    // open: '.open',
    // close: '.closebtn'
  },
  events: {
   //  'click @ui.open': 'openNav',
  	// 'click @ui.close': 'closeNav'
  }
  // openNav: function(){
  // 	console.log("opening nav");
  // 	$("#mySidenav").css("width", "250px");
  // },
  // closeNav: function(){
  // 	console.log("closing nav");
  // 	$("#mySidenav").css("width", "0px");
  // }
});
function getLocation() {
    if (navigator.geolocation) {
        navigator.geolocation.getCurrentPosition(showPosition);
    } else {
        x.innerHTML = "Geolocation is not supported by this browser.";
    }
}
function showPosition(position) {
    console.log(position.coords.latitude) 
    console.log(position.coords.longitude); 
     map = new google.maps.Map(document.getElementById('map'), {
          center: {lat: position.coords.latitude, lng: position.coords.longitude},
          zoom: 19
        });
    var myLatLng = {lat: position.coords.latitude, lng: position.coords.longitude};
    var marker = new google.maps.Marker({
    position: myLatLng,
    map: map,
    title: 'You Are Here',
    });
}

initMap = function(){
        console.log("initMap has been called");
        getLocation();
      }
jQuery.loadScript = function (url, callback) {
    jQuery.ajax({
        url: url,
        dataType: 'script',
        success: callback,
        async: true
    });
}

var map;
$.loadScript("https://maps.googleapis.com/maps/api/js?key=", initMap);
