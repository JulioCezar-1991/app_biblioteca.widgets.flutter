import 'package:app_flutter_biblioteca/app/components/custom_botton_widget.dart';
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
        child: ListView(
          children: <Widget>[
            CustomBotton(
              title: 'ShowDialog',
              onPressed: () {
                Modular.to.pushNamed('/home/alertdisplay/alert');
              },
            ),
            CustomBotton(
              title: 'GeneralDialog',
              onPressed: () {
                Modular.to.pushNamed('/home/alertdisplay/general');
              },
            ),
            CustomBotton(
              title: 'ShowAboutDialog',
              onPressed: () {
                Modular.to.pushNamed('/home/alertdisplay/about');
              },
            ),
            CustomBotton(
              title: 'SnackBar',
              onPressed: () {
                Modular.to.pushNamed('/home/buttons/badges');
              },
            ),
          ],
        ),
      ),
    );
  }
}
