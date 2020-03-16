import 'package:app_flutter_biblioteca/app/components/custom_botton_widget.dart';
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
        child: ListView(
          children: <Widget>[
            CustomBotton(
              title: 'CheakBox',
              onPressed: () {
                Modular.to.pushNamed('/home/inputdata/cheakbox');
              },
            ),
            CustomBotton(
              title: 'DataBetween',
              onPressed: () {
                Modular.to.pushNamed('/home/inputdata/databetwwen');
              },
            ),
            RaisedButton(
              child: Container(
                alignment: Alignment.center,
                child: Text("DataBetween"),
              ),
              onPressed: () {},
            ),
            CustomBotton(
              title: 'RadioButton',
              onPressed: () {
                Modular.to.pushNamed('/home/inputdata/radiobutton');
              },
            ),
            CustomBotton(
              title: 'Switch',
              onPressed: () {
                Modular.to.pushNamed('/home/inputdata/switch');
              },
            ),
            CustomBotton(
              title: 'Slider',
              onPressed: () {
                Modular.to.pushNamed('/home/inputdata/slider');
              },
            ),
            CustomBotton(
              title: 'TextField',
              onPressed: () {
                Modular.to.pushNamed('/home/inputdata/textfield');
              },
            ),
          ],
        ),
      ),
    );
  }
}
