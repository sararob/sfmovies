function initialize() {
	var mapOptions = {
		center: new google.maps.LatLng(37.7749295, -122.4194155),
		zoom: 12,
		mapTypeId: google.maps.MapTypeId.ROADMAP
};
			var map = new google.maps.Map(document.getElementById("map_canvas"),
			mapOptions);
			
			var contentString = "this worked!";
			
			var infowindow = new google.maps.InfoWindow({
			    content: contentString
			});
			
			var marker = new google.maps.Marker({
			    position: new google.maps.LatLng(37.7824465, -122.4066457),
					map: map,
					draggable:true,
					animation: google.maps.Animation.DROP,
					title: "Hello world!"
			  });
				google.maps.event.addListener(marker, 'click', function() {
				  infowindow.open(map,marker);
				});
		  }
		
function loadScript() {
	var script = document.createElement("script");
	script.type = "text/javascript";
	script.src = "http://maps.googleapis.com/maps/api/js?key=AIzaSyCCXwHmuQlZFQcsG7qy6ahDwy3xd2dFGek&sensor=false&callback=initialize";
	document.body.appendChild(script);
}

window.onload = loadScript;

