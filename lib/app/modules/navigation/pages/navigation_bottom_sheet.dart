import 'package:flutter/material.dart';

class NavigationBottomSheet extends StatefulWidget {
  @override
  _NavigationBottomSheetState createState() => _NavigationBottomSheetState();
}

class _NavigationBottomSheetState extends State<NavigationBottomSheet> {
  final _scaffoldKey = new GlobalKey<ScaffoldState>();
  VoidCallback _showPersBottomSheetCallBack;

  @override
  void initState() {
    super.initState();
    _showPersBottomSheetCallBack = _showBottomSheet;
  }

  void _showBottomSheet() {
    setState(() {
      _showPersBottomSheetCallBack = null;
    });

    _scaffoldKey.currentState
        .showBottomSheet((context) {
          return Container(
            height: 300.0,
            color: Colors.greenAccent,
            child: new Center(
              child: new Text("Hi BottomSheet"),
            ),
          );
        })
        .closed
        .whenComplete(() {
          if (mounted) {
            setState(() {
              _showPersBottomSheetCallBack = _showBottomSheet;
            });
          }
        });
  }

  void _showModalSheet() {
    showModalBottomSheet(
      context: context,
      builder: (builder) {
        return Container(
          color: Colors.greenAccent,
          child: Center(
            child: Text("Hi ModalSheet"),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text("BottomSheet"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
            child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 300,
              child: RaisedButton(
                onPressed: _showPersBottomSheetCallBack,
                child: Text("Persistent"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
            ),
            Container(
              width: 300,
              child: RaisedButton(
                onPressed: _showModalSheet,
                child: new Text("Modal"),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
