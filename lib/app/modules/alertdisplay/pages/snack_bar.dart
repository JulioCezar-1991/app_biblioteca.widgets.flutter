import 'package:flutter/material.dart';

class SnackBarExample extends StatefulWidget {
  @override
  _SnackBarExampleState createState() => _SnackBarExampleState();
}

class _SnackBarExampleState extends State<SnackBarExample> {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text("SnackBar"),
      ),
      body: Container(
        child: Center(
          child: RaisedButton(
            color: Colors.blue,
            colorBrightness: Brightness.dark,
            onPressed: () {
              final snackbar = SnackBar(
                backgroundColor: Colors.blue,
                behavior: SnackBarBehavior.floating,
                content: Text("Conta Criada"),
                duration: Duration(seconds: 5),
              );
              _scaffoldKey.currentState.showSnackBar(snackbar);
            },
            child: Text("SnackBar"),
          ),
        ),
      ),
    );
  }
}
