import 'package:flutter/material.dart';

class PlaceholderExample extends StatefulWidget {
  @override
  _PlaceholderExampleState createState() => _PlaceholderExampleState();
}

class _PlaceholderExampleState extends State<PlaceholderExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Placeholder")),
      body: Center(
        child: Container(
          height: 200,
          width: 250,
          child: Placeholder(
            color: Color(0xFF455A64),
            fallbackHeight: 100,
            fallbackWidth: 200,
            strokeWidth: 1.0,
          ),
        ),
      ),
    );
  }
}
