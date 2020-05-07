import 'package:app_flutter_biblioteca/app/components/custom_botton_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class BoxcontrollerPage extends StatefulWidget {
  final String title;
  const BoxcontrollerPage({Key key, this.title = "BoxController"})
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
        child: ListView(
          children: <Widget>[
            CustomBotton(
              title: 'Expanded',
              onPressed: () {
                Modular.to.pushNamed('/home/boxcontroller/expanded');
              },
            ),
            CustomBotton(
              title: 'Flow',
              onPressed: () {
                Modular.to.pushNamed('/home/boxcontroller/flow');
              },
            ),
            CustomBotton(
              title: 'LimitedBox',
              onPressed: () {
                Modular.to.pushNamed('/home/boxcontroller/limitedbox');
              },
            ),
            CustomBotton(
              title: 'Wrap',
              onPressed: () {
                Modular.to.pushNamed('/home/boxcontroller/wrap');
              },
            ),
            CustomBotton(
              title: 'Placeholder',
              onPressed: () {
                Modular.to.pushNamed('/home/boxcontroller/placeholder');
              },
            ),
          ],
        ),
      ),
    );
  }
}
