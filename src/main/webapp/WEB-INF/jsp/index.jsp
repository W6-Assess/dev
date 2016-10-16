<!DOCTYPE html>
<html>
<head>
	
    <title>Quick Start - Leaflet</title>

    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="shortcut icon" type="image/x-icon" href="docs/images/favicon.ico" />

    <link rel="stylesheet" href="https://unpkg.com/leaflet@1.0.1/dist/leaflet.css" />
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
 
    <script src="https://unpkg.com/leaflet@1.0.1/dist/leaflet.js"></script>
        
    <script src="scripts/events.js" type="text/javascript"></script>    

        <style>
            #mapid{
                width: 1200px; height: 700px;
            }
        </style>
</head>
<body>

<div class="container"  style="width:80%">
  <div class="container-fluid">
    <div class="row">
      <div class="col-sm-12 header" id="header">
        <h1 id="logo">
          <img id="logo" class="logo" src="logo/Logo/W6.png"/>
        </h1>
        <h2 id="site-name">W6 assess</h2>
        <h4 id="site-slogan">news based security profiling</h4>
        <br><br>
        <nav class="navbar navbar-inverse" style="background-color:black; width:106%">
    
    <ul class="nav navbar-nav">
      <li class="active"><a href="#">Home</a></li>
      <li><a href="input">Input</a></li>
      <li><a href="#">Report</a></li>
      <li><a href="#">Add Event</a></li>
    </ul>
</nav>
      </div> </div></div>
  <div class="" id="main-title" >
                    <h1 style="color:#39B7CD" >Map Visualization</h1>
                   
                </div>
    
  <div class="row">
                <div class="col-xs-12  index-main-row">
                    <div class="row row-index">

                        <div class="col-lg-6  col-md-3 col-xs-12 col-md-offset-0 index-img-client">

                            <p> Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapib</p>
      </div><br>
                        <div class="col-lg-6 col-offset-3 col-md-3 col-xs-12 ">

    <ul class="nav nav-pills" style="float:right">
    <li class="active"><a href="#">Home</a></li>
    <li ><a  href="#">Menu 1</a></li>
    <li><a href="#">Menu 2</a></li>
    <li><a href="#">Menu 3</a></li>
  </ul>
 
                        </div>
      <div id="mapid" style="width: 103%" >
<script>

	var map = L.map('mapid').setView([39.74739, -105], 2);

	L.tileLayer('https://api.tiles.mapbox.com/v4/{id}/{z}/{x}/{y}.png?access_token=pk.eyJ1IjoibWFwYm94IiwiYSI6ImNpandmbXliNDBjZWd2M2x6bDk3c2ZtOTkifQ._QA7i5Mpkd_m30IGElHziw', {
		maxZoom: 18,
		attribution: 'Map data &copy; <a href="http://openstreetmap.org">OpenStreetMap</a> contributors, ' +
			'<a href="http://creativecommons.org/licenses/by-sa/2.0/">CC-BY-SA</a>, ' +
			'Imagery � <a href="http://mapbox.com">Mapbox</a>',
		id: 'mapbox.light'
	}).addTo(map);

        var features = [];
        var articles = ${articles};
        console.log(articles);
        articles.forEach(function(article)
        {
            if (article.hasOwnProperty('location'))
            {
                var location = JSON.parse(article.location);
                console.log(location);  
                features.push(
                    {
                        "geometry": {

                            "type": "Point", 

                            "coordinates": [
                                location.lng, 
                                location.lat
                            ]
                        }, 

                        "type": "Feature", 

                        "properties": {

                            "type_of_area": "Road", 

                            "event_description": "2 MDM aid workers are abducted by Somali gunmen", 

                            "location": "at the border village of Laas Caanood, Ogaden Region", 

                            "perpetratordetails": "Clan militia"

                        }
                    }
                );
            }
        });
        console.log(features);
        var events = {

            "type": "FeatureCollection",

            "features": features
        
        };
	L.geoJSON(events, {

		filter: function (feature, layer) {
			if (feature.properties) {
				// If the property "underConstruction" exists and is true, return false (don't render features under construction)
				return feature.properties.underConstruction !== undefined ? !feature.properties.underConstruction : true;
			}
			return false;
		},

		pointToLayer: function (feature, latlng) {
			return L.circleMarker(latlng, {
				radius: 8,
				fillColor: "#ff7800",
				color: "#000",
				weight: 1,
				opacity: 1,
				fillOpacity: 0.8
			});
                    }
	}).addTo(map);

</script>
<br>
    </div>
    <div id="footer" style="font-size: 15px;" >
        <div class="container">
          <p class="muted credit">W6 project copyright <a href="">2016 </p>
        </div>
    </div>
</div>

    </body>
</html>

