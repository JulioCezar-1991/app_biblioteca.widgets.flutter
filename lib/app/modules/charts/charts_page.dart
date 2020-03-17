import 'package:app_flutter_biblioteca/app/components/custom_botton_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
        child: ListView(
          children: <Widget>[
            CustomBotton(
              title: 'Calendar',
              onPressed: () {
                Modular.to.pushNamed('home/charts/calendarcopy');
              },
            ),
            CustomBotton(
              title: 'PartsLine',
              onPressed: () {
                Modular.to.pushNamed('home/charts/partsline');
              },
            ),
            CustomBotton(
              title: 'PartsPie',
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
