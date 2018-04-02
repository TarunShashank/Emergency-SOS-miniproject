/* global google, i */

var geocoder;
var map;
var centerPos;
var markers = Array();
var infos = Array();



$(document).ready(function() {
	if (map) map.setCenter(centerPos);
});

function initialize() {
	// prepare Geocoder
	geocoder = new google.maps.Geocoder();

	// set initial position (DEHRADUN)
	var myLatlng = new google.maps.LatLng(17.5003369, 78.4724265);

	var myOptions = { // default map options
		zoom : 14,
		center : myLatlng,
                scrollwheel: false,
		mapTypeId: google.maps.MapTypeId.ROADMAP,
                styles: [{"featureType":"water","stylers":[{"saturation":43},{"lightness":-11},{"hue":"#0088ff"}]},{"featureType":"road","elementType":"geometry.fill","stylers":[{"hue":"#ff0000"},{"saturation":-100},{"lightness":99}]},{"featureType":"road","elementType":"geometry.stroke","stylers":[{"color":"#808080"},{"lightness":54}]},{"featureType":"landscape.man_made","elementType":"geometry.fill","stylers":[{"color":"#ece2d9"}]},{"featureType":"poi.park","elementType":"geometry.fill","stylers":[{"color":"#ccdca1"}]},{"featureType":"road","elementType":"labels.text.fill","stylers":[{"color":"#767676"}]},{"featureType":"road","elementType":"labels.text.stroke","stylers":[{"color":"#ffffff"}]},{"featureType":"poi","stylers":[{"visibility":"off"}]},{"featureType":"landscape.natural","elementType":"geometry.fill","stylers":[{"visibility":"on"},{"color":"#b8cb93"}]},{"featureType":"poi.park","stylers":[{"visibility":"on"}]},{"featureType":"poi.sports_complex","stylers":[{"visibility":"on"}]},{"featureType":"poi.medical","stylers":[{"visibility":"on"}]},{"featureType":"poi.business","stylers":[{"visibility":"simplified"}]}]
            };
	map = new google.maps.Map(document.getElementById('map'), myOptions);
        }



// clear overlays function
function clearOverlays() {
	if (markers) {
		for (i in markers) {
			markers[i].setMap(null);
		}
		markers = [];
		infos = [];
	}
}

// clear infos function
function clearInfos() {
	if (infos) {
		for (i in infos) {
			if (infos[i].getMap()) {
				infos[i].close();
			}
		}
	}
}

// find address function
function findAddress() {
	var address = document.getElementById("gmap_where").value;

	// script uses our 'geocoder' in order to find location by address name
	geocoder.geocode({
		'address' : address
	}, function(results, status) {
		if (status === google.maps.GeocoderStatus.OK) { // and, if everything is
			// ok

			// we will center map
			var addrLocation = results[0].geometry.location;
			centerPos = addrLocation;
			map.setCenter(centerPos);

			// store current coordinates into hidden variables
			document.getElementById('lat').value = results[0].geometry.location
					.lat();
			document.getElementById('lng').value = results[0].geometry.location
					.lng();

			// and then - add new custom marker
			var addrMarker = new google.maps.Marker({
				position : addrLocation,
				map : map,
				title : results[0].formatted_address
			});
		} else {
			alert('Geocode was not successful for the following reason: '
					+ status);
		}
	});
}

// find custom places function
function findPlaces() {

	// prepare variables (filter)
	var type = document.getElementById('gmap_type').value;
	var radius = document.getElementById('gmap_radius').value;
	var keyword = document.getElementById('gmap_keyword').value;

	var lat = document.getElementById('lat').value;
	var lng = document.getElementById('lng').value;
	var cur_location = new google.maps.LatLng(lat, lng);

	// prepare request to Places
	var request = {
		location : cur_location,
		radius : radius,
		types : [ type ]
	};
	if (keyword) {
		request.keyword = [ keyword ];
	}

	// send request
	service = new google.maps.places.PlacesService(map);
	service.search(request, createMarkers);
}

// show places
function showPlaces() {
	// prepare variables (filter)
	var type = document.getElementById('gmap_type').value;
	var radius = document.getElementById('gmap_radius').value;
	var keyword = document.getElementById('gmap_keyword').value;

	var lat = document.getElementById('lat').value;
	var lng = document.getElementById('lng').value;
	var cur_location = new google.maps.LatLng(lat, lng);

	// prepare request to Places
	var request = {
		location : cur_location,
		radius : radius,
		types : [ type ]
	};
	if (keyword) {
		request.keyword = [ keyword ];
	}

	// send request
	service = new google.maps.places.PlacesService(map);
	service.search(request, showMarkers);
}

// show markers
function showMarkers(results, status) {
	if (status === google.maps.places.PlacesServiceStatus.OK) {
		// clear overlay
		clearOverlays();
		// Show The List detail
	
                $('.modal-body').html('<ul class="list-unstyled"></ul>');
		for (var j = 0; j < results.length; j++) {
			showMarker(results[j]);
		}
		$('#modal1').modal('show');
                
	} else if (status === google.maps.places.PlacesServiceStatus.ZERO_RESULTS) {
		alert('Nothing Found');
	}
}
// single showmarker to print list
function showMarker(obj) {
	// console.log('Name:' + obj.name + '\nAddress:' + obj.vicinity);
	$('.list-unstyled').append(
			'<li class="collection-item avatar"><img src="' + obj.icon
					+ '" class="circle"><br><span class="title">' + obj.name
					+ '</span><p>Address: ' + obj.vicinity + '</p></li>');
}

// create markers (from 'findPlaces' function)
function createMarkers(results, status) {
	if (status === google.maps.places.PlacesServiceStatus.OK) {

		// if we have found something - clear map (overlays)
		clearOverlays();

		// and create new markers by search result
		for (var i = 0; i < results.length; i++) {
			createMarker(results[i]);
		}
	} else if (status === google.maps.places.PlacesServiceStatus.ZERO_RESULTS) {
		alert('Sorry, nothing is found');
	}
}

// creare single marker function
function createMarker(obj) {

	// prepare new Marker object
	var mark = new google.maps.Marker({
		position : obj.geometry.location,
		map : map,
		title : obj.name
	});
	markers.push(mark);

	// prepare info window
	var infowindow = new google.maps.InfoWindow({
		content : '<img src="' + obj.icon + '" /><font style="color:#000;">'
				+ obj.name + '<br />Rating: ' + obj.rating + '<br />Vicinity: '
				+ obj.vicinity + '</font>'
	});

	// add event handler to current marker
	google.maps.event.addListener(mark, 'click', function() {
		clearInfos();
		infowindow.open(map, mark);
	});
	infos.push(infowindow);
}

function mylocation() {
	var infoWindow = new google.maps.InfoWindow({
		map : map
	});
	if (navigator.geolocation) {
		navigator.geolocation.getCurrentPosition(function(position) {
			var pos = {
				lat : position.coords.latitude,
				lng : position.coords.longitude
			};
			infoWindow.setPosition(pos);
			infoWindow.setContent('Location found.');
			centerPos = pos;
			map.setCenter(centerPos);
			var lati = position.coords.latitude;
			var longi = position.coords.longitude;
			document.getElementById('lat').value = lati;
			document.getElementById('lng').value = longi;

			var addrMarker = new google.maps.Marker({
				position : pos,
				map : map,
                                scrollable :false,
				title : pos.formatted_address
			});

		}, function() {
			handleLocationError(true, infoWindow, map.getCenter());
		});
	} else {
		// Browser doesn't support Geolocation
		handleLocationError(false, infoWindow, map.getCenter());
	}
}

function handleLocationError(browserHasGeolocation, infoWindow, pos) {
	infoWindow.setPosition(pos);
	infoWindow
			.setContent(browserHasGeolocation ? 'Error: The Geolocation service failed.'
					: 'Error: Your browser doesn\'t support geolocation.');
}

// initialization
google.maps.event.addDomListener(window, 'load', initialize);

