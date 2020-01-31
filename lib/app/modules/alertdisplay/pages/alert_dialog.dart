import 'package:flutter/material.dart';

class AlertDialogExample extends StatefulWidget {
  @override
  _AlertDialogExampleState createState() => _AlertDialogExampleState();
}

class _AlertDialogExampleState extends State<AlertDialogExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ShowDialog"),
      ),
      body: Container(
        child: Center(
          child: Column(
            children: <Widget>[
              RaisedButton(
                child: Container(
                  alignment: Alignment.center,
                  width: 300,
                  child: Text("ShowDialog"),
                ),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text("Conta Criada"),
                        content: Text("Usuario Criado Com Sucesso"),
                        actions: <Widget>[
                          FlatButton(
                            child: Text("Ok"),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ],
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
