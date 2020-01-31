import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class BoxcontrollerPage extends StatefulWidget {
  final String title;
  const BoxcontrollerPage({Key key, this.title = "Boxcontroller"})
      : super(key: key);

  @override
  _BoxcontrollerPageState createState() => _BoxcontrollerPageState();
}

class _BoxcontrollerPageState extends State<BoxcontrollerPage> {
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
                child: Text("Flow"),
              ),
              onPressed: () {
                Modular.to.pushNamed('/home/boxcontroller/flow');
              },
            ),
            RaisedButton(
              child: Container(
                alignment: Alignment.center,
                child: Text("LimitedBox"),
              ),
              onPressed: () {
                Modular.to.pushNamed('/home/boxcontroller/limitedbox');
              },
            ),
            RaisedButton(
              child: Container(
                alignment: Alignment.center,
                child: Text("Wrap"),
              ),
              onPressed: () {
                Modular.to.pushNamed('/home/boxcontroller/wrap');
              },
            ),
          ],
        ),
      ),
    );
  }
}
