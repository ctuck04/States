<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="states.css">
<title>States</title>
</head>

<div id="results">
<body>
	<c:choose>
		<c:when test="${! empty state}">
			<ul>
				<li>State Name: ${state.name}</li>
				<li>State Abbreviation: ${state.abbreviation}</li>
				<li>State Capital: ${state.capital}</li>
				<li>Population: ${state.population}</li>
				<div id="link"><li>
				<a href="http://www.50states.com/bird/${state.name}.htm">State Bird</a></li></div>
			</ul>
			<p></p>
			
			<form action="index.html">
				<button>Home</button>
			</form>
			<form action="navigate.do">
				<input type="submit" name="next" width="20" height="20" value="Next">
			</form><br>
		
		<script type="text/javascript" src="http://maps.googleapis.com/maps/api/js?sensor=false"></script>
<script language="javascript" type="text/javascript">

    var map;
    var geocoder;
    function InitializeMap() {

        var latlng = new google.maps.LatLng(${state.latitude}, ${state.longitude});
        var myOptions =
        {
            zoom: 8,
            center: latlng,
            mapTypeId: google.maps.MapTypeId.ROADMAP,
            disableDefaultUI: true
        };
        map = new google.maps.Map(document.getElementById("map"), myOptions);
    }

    function FindLocaiton() {
        geocoder = new google.maps.Geocoder();
        InitializeMap();

        var address = document.getElementById("addressinput").value;
        geocoder.geocode({ 'address': address }, function (results, status) {
            if (status == google.maps.GeocoderStatus.OK) {
                map.setCenter(results[0].geometry.location);
                var marker = new google.maps.Marker({
                    map: map,
                    position: results[0].geometry.location
                });

            }
            else {
                alert("Geocode was not successful for the following reason: " + status);
            }
        });

    }


    function Button1_onclick() {
        FindLocaiton();
    }

    window.onload = InitializeMap;

</script>
</head>
<body>

<table>
<tr>
<td>
    <input id="addressinput" type="text" style="width: 447px" />   
</td>
<td>
    <input id="Button1" type="button" value="Find" onclick="return Button1_onclick()" /></td>
</tr>
<tr>
<td colspan ="2">
<div id ="map" style="height: 253px" >
</div>
</td>
</tr>
</table>
</div>		
		
		
		
		</c:when>
		<c:otherwise>
			<p>No state found</p>
			<p></p>
			<form action="index.html">
				<button>Home</button>
			</form><br>
		</c:otherwise>
	</c:choose>
</body>
</html>