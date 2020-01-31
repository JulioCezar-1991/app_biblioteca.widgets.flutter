import 'package:flutter/material.dart';

class AboutDialogExample extends StatefulWidget {
  @override
  _AboutDialogExampleState createState() => _AboutDialogExampleState();
}

class _AboutDialogExampleState extends State<AboutDialogExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AboutDialog"),
      ),
      body: Container(
        child: Center(
          child: Column(
            children: <Widget>[
              RaisedButton(
                child: Container(
                  alignment: Alignment.center,
                  width: 300,
                  child: Text("ShowAboutDialog"),
                ),
                onPressed: () {
                  return showAboutDialog(
                    context: context,
                    applicationIcon: FlutterLogo(),
                    applicationName: "Flutter Playground",
                    applicationVersion: "1.0.0",
                    applicationLegalese: "Hello Word",
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
