import 'package:flutter/material.dart';

class GeneralDialogExample extends StatefulWidget {
  @override
  _GeneralDialogExampleState createState() => _GeneralDialogExampleState();
}

class _GeneralDialogExampleState extends State<GeneralDialogExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AlertDialog"),
      ),
      body: Container(
        child: Center(
          child: Column(
            children: <Widget>[
              //ShowGeneralDialog
              RaisedButton(
                child: Container(
                  alignment: Alignment.center,
                  width: 300,
                  child: Text("ShowGeneralDialog"),
                ),
                onPressed: () {
                  showGeneralDialog(
                    context: context,
                    barrierDismissible: true,
                    barrierLabel: MaterialLocalizations.of(context)
                        .modalBarrierDismissLabel,
                    barrierColor: Colors.black45,
                    transitionDuration: const Duration(milliseconds: 600),
                    pageBuilder: (BuildContext buildContext,
                        Animation animation, Animation secondaryAnimation) {
                      return Center(
                        child: Container(
                          width: MediaQuery.of(context).size.width - 80,
                          height: MediaQuery.of(context).size.height - 80,
                          padding: EdgeInsets.all(20),
                          color: Colors.white,
                          child: Column(
                            children: [],
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
