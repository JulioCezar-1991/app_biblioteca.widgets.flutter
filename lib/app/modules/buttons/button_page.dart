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
        padding: EdgeInsets.only(left: 20, right: 20),
        child: ListView(
          children: <Widget>[
            RaisedButton(
              child: Container(
                alignment: Alignment.center,
                child: Text("FloatingActionButton"),
              ),
              onPressed: () {
                Modular.to.pushNamed('/home/buttons/floatingbutton');
              },
            ),
          ],
        ),
      ),
    );
  }
}
