import 'package:flutter/material.dart';

class RadiusExample extends StatefulWidget {
  @override
  _RadiusExampleState createState() => _RadiusExampleState();
}

class _RadiusExampleState extends State<RadiusExample> {
  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    Size size = mediaQuery.size;

    return Scaffold(
      appBar: AppBar(
        title: Text("Radius"),
      ),
      body: Column(
        children: <Widget>[
          Container(
            height: size.height / 3,
            padding: EdgeInsets.all(4),
            decoration: BoxDecoration(
              boxShadow: [BoxShadow(color: Colors.blue[400], blurRadius: 1)],
              borderRadius: BorderRadius.only(
                bottomRight: Radius.elliptical(100, 100),
                bottomLeft: Radius.circular(100),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
