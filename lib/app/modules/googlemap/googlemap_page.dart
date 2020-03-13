import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class GooglemapPage extends StatefulWidget {
  final String title;
  const GooglemapPage({Key key, this.title = "Googlemap"}) : super(key: key);

  @override
  _GooglemapPageState createState() => _GooglemapPageState();
}

class _GooglemapPageState extends State<GooglemapPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
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
                Modular.to.pushNamed('/home/googlemap/geolocatorfromaddress');
              },
            ),
            RaisedButton(
              child: Container(
                alignment: Alignment.center,
                child: Text("GeolocatorMap"),
              ),
              onPressed: () {
                Modular.to.pushNamed('/home/googlemap/geolocatormap');
              },
            ),
            RaisedButton(
              child: Container(
                alignment: Alignment.center,
                child: Text("PolygonsPolylines"),
              ),
              onPressed: () {
                Modular.to.pushNamed('/home/googlemap/polygonspolylines');
              },
            ),
          ],
        ),
      ),
    );
  }
}
