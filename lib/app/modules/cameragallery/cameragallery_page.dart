import 'package:flutter/material.dart';

class CameragalleryPage extends StatefulWidget {
  final String title;
  const CameragalleryPage({Key key, this.title = "Cameragallery"})
      : super(key: key);

  @override
  _CameragalleryPageState createState() => _CameragalleryPageState();
}

class _CameragalleryPageState extends State<CameragalleryPage> {
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
