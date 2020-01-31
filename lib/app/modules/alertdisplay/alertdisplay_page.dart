import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AlertDisplayPage extends StatefulWidget {
  final String title;
  const AlertDisplayPage({Key key, this.title = "AlertDisplay"})
      : super(key: key);

  @override
  _AlertDisplayPageState createState() => _AlertDisplayPageState();
}

class _AlertDisplayPageState extends State<AlertDisplayPage> {
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
                child: Text("ShowDialog"),
              ),
              onPressed: () {
                Modular.to.pushNamed('/home/alertdisplay/alert');
              },
            ),
            RaisedButton(
              child: Container(
                alignment: Alignment.center,
                child: Text("GeneralDialog"),
              ),
              onPressed: () {
                Modular.to.pushNamed('/home/alertdisplay/general');
              },
            ),
            RaisedButton(
              child: Container(
                alignment: Alignment.center,
                child: Text("ShowAboutDialog"),
              ),
              onPressed: () {
                Modular.to.pushNamed('/home/alertdisplay/about');
              },
            ),
            RaisedButton(
              child: Container(
                alignment: Alignment.center,
                child: Text("SnackBar"),
              ),
              onPressed: () {
                Modular.to.pushNamed('/home/alertdisplay/snackbar');
              },
            ),
          ],
        ),
      ),
    );
  }
}
