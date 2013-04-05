 
function initialize() {
	var mapOptions = {
		center: new google.maps.LatLng(-34.397, 150.644),
		zoom: 5,
		mapTypeId: google.maps.MapTypeId.ROADMAP
};
			var map = new google.maps.Map(document.getElementById("map_canvas"),
			mapOptions);
		  }
		
function loadScript() {
	var script = document.createElement("script");
	script.type = "text/javascript";
	script.src = "http://maps.googleapis.com/maps/api/js?key=AIzaSyCCXwHmuQlZFQcsG7qy6ahDwy3xd2dFGek&sensor=false&callback=initialize";
	document.body.appendChild(script);
}

window.onload = loadScript;
