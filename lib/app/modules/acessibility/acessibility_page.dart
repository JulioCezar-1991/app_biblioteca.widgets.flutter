import 'package:app_flutter_biblioteca/app/components/custom_botton_widget.dart';
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
        child: ListView(
          children: <Widget>[
            CustomBotton(
              title: "ToolTip",
              onPressed: () {
                Modular.to.pushNamed('/home/acessibility/tooltip');
              },
            )
          ],
        ),
      ),
    );
  }
}
