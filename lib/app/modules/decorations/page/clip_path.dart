import 'package:flutter/material.dart';

class ClipPathExample extends StatefulWidget {
  @override
  _ClipPathExampleState createState() => _ClipPathExampleState();
}

class _ClipPathExampleState extends State<ClipPathExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ClipPath"),
      ),
      body: ClipPath(
        clipper: ClipHome(),
        child: Container(color: Colors.deepPurpleAccent),
      ),
    );
  }
}

class ClipHome extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0.0, size.height);

    var pointControl = Offset(size.width - (size.width / 20), size.height / 2);
    var endPoint = Offset(0.0, 0.0);

    path.quadraticBezierTo(
        pointControl.dx, pointControl.dy, endPoint.dx, endPoint.dy);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return oldClipper != this;
  }
}
