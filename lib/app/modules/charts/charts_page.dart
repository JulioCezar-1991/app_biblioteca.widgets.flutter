import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ChartsPage extends StatefulWidget {
  final String title;
  const ChartsPage({Key key, this.title = "Charts"}) : super(key: key);

  @override
  _ChartsPageState createState() => _ChartsPageState();
}

class _ChartsPageState extends State<ChartsPage> {
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
                child: Text("PartsLine"),
              ),
              onPressed: () {
                Modular.to.pushNamed('home/charts/partsline');
              },
            ),
            RaisedButton(
              child: Container(
                alignment: Alignment.center,
                child: Text("PartsPie"),
              ),
              onPressed: () {
                Modular.to.pushNamed('home/charts/partspie');
              },
            ),
          ],
        ),
      ),
    );
  }
}
