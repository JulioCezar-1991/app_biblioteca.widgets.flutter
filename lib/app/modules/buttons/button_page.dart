import 'package:app_flutter_biblioteca/app/components/custom_botton_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ButtonPage extends StatefulWidget {
  final String title;
  const ButtonPage({Key key, this.title = "Buttons"}) : super(key: key);

  @override
  _ButtonPageState createState() => _ButtonPageState();
}

class _ButtonPageState extends State<ButtonPage> {
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
              title: 'FloatingActionButton',
              onPressed: () {
                Modular.to.pushNamed('/home/buttons/floatingbutton');
              },
            ),
            CustomBotton(
              title: 'FloatingActionButtonMenu',
              onPressed: () {
                Modular.to.pushNamed('/home/buttons/floatingbuttonmenu');
              },
            ),
            CustomBotton(
              title: 'Badges',
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
