import 'package:flutter/material.dart';

class GradientExample extends StatefulWidget {
  @override
  _GradientExampleState createState() => _GradientExampleState();
}

class _GradientExampleState extends State<GradientExample> {
  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    Size size = mediaQuery.size;

    return Scaffold(
      appBar: AppBar(
        title: Text("Gradient"),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: size.width,
          height: size.height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.blue, Colors.red],
            ),
          ),
        ),
      ),
    );
  }
}
