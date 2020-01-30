import 'package:flutter/material.dart';

class ShowdialogPage extends StatefulWidget {
  final String title;
  const ShowdialogPage({Key key, this.title = "Showdialog"}) : super(key: key);

  @override
  _ShowdialogPageState createState() => _ShowdialogPageState();
}

class _ShowdialogPageState extends State<ShowdialogPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[],
      ),
    );
  }
}
