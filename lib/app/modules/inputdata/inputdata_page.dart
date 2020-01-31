import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class InputdataPage extends StatefulWidget {
  final String title;
  const InputdataPage({Key key, this.title = "Inputdate"}) : super(key: key);

  @override
  _InputdataPageState createState() => _InputdataPageState();
}

class _InputdataPageState extends State<InputdataPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        padding: EdgeInsets.only(left: 20, right: 20),
        child: ListView(children: <Widget>[
          RaisedButton(
            child: Container(
              alignment: Alignment.center,
              child: Text("CheakBox"),
            ),
            onPressed: () {
              Modular.to.pushNamed('/home/inputdata/cheakbox');
            },
          ),
          RaisedButton(
            child: Container(
              alignment: Alignment.center,
              child: Text("DataBetween"),
            ),
            onPressed: () {
              Modular.to.pushNamed('/home/inputdata/databetwwen');
            },
          ),
          RaisedButton(
            child: Container(
              alignment: Alignment.center,
              child: Text("RadioButton"),
            ),
            onPressed: () {
              Modular.to.pushNamed('/home/inputdata/radiobutton');
            },
          ),
          RaisedButton(
            child: Container(
              alignment: Alignment.center,
              child: Text("Switch"),
            ),
            onPressed: () {
              Modular.to.pushNamed('/home/inputdata/switch');
            },
          ),
          RaisedButton(
            child: Container(
              alignment: Alignment.center,
              child: Text("Slider"),
            ),
            onPressed: () {
              Modular.to.pushNamed('/home/inputdata/slider');
            },
          ),
          RaisedButton(
            child: Container(
              alignment: Alignment.center,
              child: Text("TextField"),
            ),
            onPressed: () {
              Modular.to.pushNamed('/home/inputdata/textfield');
            },
          ),
        ]),
      ),
    );
  }
}
