<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>서치박스 입력값으로 위도, 경도 출력</title>
<style type="text/css">
#map {
	width: 800px;
	height: 600px;
}

html, body {
	height: 100%;
	margin: 0;
	padding: 0;
}

#pac-input {
	background-color: #fff;
	font-size: 15px;
	font-weight: 300;
	margin-left: 12px;
	padding: 0 11px 0 13px;
	text-overflow: ellipsis;
	width: 400px;
}

#pac-input:focus {
	border-color: #4d90fe;
}
</style>
<script type="text/javascript"
	src="http://maps.google.com/maps/api/js?key=AIzaSyC-Ph6N3u8UsyllNn9a1RJPmWnVLWv_aCk&callback=initMap&libraries=places"
	async defer></script>
<script type="text/javascript">
	var currLat;
	var currLng;
	var geoHapJeongStationExit2 =
	{
		lat : 37.549141,
		lng : 126.913436
	};

	function initMap()
	{
		var map = new google.maps.Map(document.getElementById('map'),
		{
			center : geoHapJeongStationExit2,
			zoom : 15,
			mapTypeId : 'roadmap'
		});

		var input = document.getElementById('pac-input');
		var searchBox = new google.maps.places.SearchBox(input);
		map.controls[google.maps.ControlPosition.TOP_LEFT].push(input);
		map.addListener('bounds_changed', function()
		{
			searchBox.setBounds(map.getBounds());
		});
		var infoWindow = new google.maps.InfoWindow;

		searchBox.addListener('places_changed', function()
		{
			var places = searchBox.getPlaces();

			if (places.length == 0)
			{
				return;
			}

			// For each place, get the icon, name and location.
			var bounds = new google.maps.LatLngBounds();
			places.forEach(function(place)
			{
				// 수정한 영역[
				currLat = place.geometry.location.lat(); // 위도
				currLng = place.geometry.location.lng(); // 경도
				console.log(currLat + ', ' + currLng);
				infoWindow.setPosition(place.geometry.location);
				infoWindow.setContent(currLat + ', ' + currLng);
				infoWindow.open(map);
				// 수정한 영역]

				if (!place.geometry)
				{
					console.log("Returned place contains no geometry");
					return;
				}

				if (place.geometry.viewport)
				{
					bounds.union(place.geometry.viewport);
				} else
				{
					bounds.extend(place.geometry.location);
				}
			});
			map.fitBounds(bounds);
		});
	}
</script>
</head>
<body>
	<p>
		<a
			href="https://developers.google.com/maps/documentation/javascript/examples/places-searchbox"
			target="_blank">소스 출처</a>
	</p>
	<div>
		<input id="pac-input" class="controls" type="text"
			placeholder="Search Box">
		<div id="map"></div>
	</div>
</body>

</html>