import 'package:entrada_dados/android/RouteGenerator.dart';
import 'package:flutter/material.dart';
class HomeGoogleMaps extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GoogleMap"),
      ),
      body: Container(
        padding: EdgeInsets.only(left: 20, right: 20),
        child: ListView(
          children: <Widget>[
            RaisedButton(
              child: Container(
                alignment: Alignment.center,
                
                child: Text("GeolocatorFromAddress"),
              ),
              onPressed: () {
                Navigator.pushNamed(
                  context, RouteGenerator.ROUTE_GEOLOCATORFROMADDRESS);
              },
            ),
            RaisedButton(
              child: Container(
                alignment: Alignment.center,
                
                child: Text("GeolocatorLocale"),
              ),
              onPressed: () {
               Navigator.pushNamed(
                  context, RouteGenerator.ROUTE_GEOLOCATORLOCALE);
              },
            ),
            RaisedButton(
              child: Container(
                alignment: Alignment.center,
                
                child: Text("PolygonsPolylines"),
              ),
              onPressed: () {
                Navigator.pushNamed(
                  context, RouteGenerator.ROUTE_POLYGONSPOYLINES);
              },
            ),
          ],
        ),
      ),
    );
  }
}
