import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AcessibilityPage extends StatefulWidget {
  final String title;
  const AcessibilityPage({Key key, this.title = "Acessibility"})
      : super(key: key);

  @override
  _AcessibilityPageState createState() => _AcessibilityPageState();
}

class _AcessibilityPageState extends State<AcessibilityPage> {
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
                  child: Text("ToolTip"),
                ),
                onPressed: () {
                  Modular.to.pushNamed('/home/acessibility/tooltip');
                },
              ),
            ],
          ),
        ));
  }
}
