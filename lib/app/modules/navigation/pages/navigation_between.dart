import 'package:flutter/material.dart';

class NavigationBetween extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenPrimary();
  }
}

class ScreenPrimary extends StatefulWidget {
  @override
  _ScreenPrimaryState createState() => _ScreenPrimaryState();
}

class _ScreenPrimaryState extends State<ScreenPrimary> {
  
  void _navegacao() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ScreenSecondary(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ScreenPrimary"),
        backgroundColor: Colors.orange,
      ),
      body: Center(
        child: RaisedButton(
          child: Text("Click"),
          onPressed: () {
            _navegacao();
          },
        ),
      ),
    );
  }
}

class ScreenSecondary extends StatefulWidget {
  @override
  _ScreenSecondaryState createState() => _ScreenSecondaryState();
}

class _ScreenSecondaryState extends State<ScreenSecondary> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ScreenSecondary"),
        backgroundColor: Colors.green,
      ),
    );
  }
}
