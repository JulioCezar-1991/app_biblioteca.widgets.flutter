import 'package:flutter/material.dart';

class ToolTipPage extends StatefulWidget {
  @override
  _ToolTipPageState createState() => _ToolTipPageState();
}

class _ToolTipPageState extends State<ToolTipPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ToolTip"),
      ),
      body: Center(
        child: IconButton(
          iconSize: 50,
          alignment: Alignment.center,
          icon: Icon(
            Icons.autorenew,
            semanticLabel: "Oi",
            size: 50,
            color: Colors.amber,
          ),
          onPressed: () {},
          tooltip: "Atualizar",
          splashColor: Colors.blue,
        ),
      ),
    );
  }
}
