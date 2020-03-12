import 'package:flutter/material.dart';

class GooglemapPage extends StatefulWidget {
  final String title;
  const GooglemapPage({Key key, this.title = "Googlemap"}) : super(key: key);

  @override
  _GooglemapPageState createState() => _GooglemapPageState();
}

class _GooglemapPageState extends State<GooglemapPage> {
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
