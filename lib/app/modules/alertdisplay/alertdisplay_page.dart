import 'package:app_flutter_biblioteca/app/components/custom_botton_widget.dart';
import 'package:flutter/material.dart';

class AlertDisplayPage extends StatefulWidget {
  final String title;
  const AlertDisplayPage({Key key, this.title = "AlertDisplay"})
      : super(key: key);

  @override
  _AlertDisplayPageState createState() => _AlertDisplayPageState();
}

class _AlertDisplayPageState extends State<AlertDisplayPage> {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            CustomBotton(
              title: 'ShowDialog',
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
            CustomBotton(
              title: 'GeneralDialog',
              onPressed: () {
                showGeneralDialog(
                  context: context,
                  barrierDismissible: true,
                  barrierLabel: MaterialLocalizations.of(context)
                      .modalBarrierDismissLabel,
                  barrierColor: Colors.black45,
                  transitionDuration: const Duration(milliseconds: 600),
                  pageBuilder: (BuildContext buildContext, Animation animation,
                      Animation secondaryAnimation) {
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
            CustomBotton(
              title: 'ShowAboutDialog',
              onPressed: () {
                showAboutDialog(
                  context: context,
                  applicationIcon: FlutterLogo(),
                  applicationName: "Flutter Playground",
                  applicationVersion: "1.0.0",
                  applicationLegalese: "Hello Word",
                );
              },
            ),
            CustomBotton(
              title: 'SnackBarFloating',
              onPressed: () {
                final snackbar = SnackBar(
                  backgroundColor: Colors.blue,
                  behavior: SnackBarBehavior.floating,
                  content: Text("Conta Criada"),
                  duration: Duration(seconds: 5),
                );
                _scaffoldKey.currentState.showSnackBar(snackbar);
              },
            ),
            CustomBotton(
              title: 'SnackBarFixed',
              onPressed: () {
                final snackbar = SnackBar(
                  backgroundColor: Colors.blue,
                  behavior: SnackBarBehavior.fixed,
                  content: Text("Conta Criada"),
                  duration: Duration(seconds: 5),
                );
                _scaffoldKey.currentState.showSnackBar(snackbar);
              },
            )
          ],
        ),
      ),
    );
  }
}
