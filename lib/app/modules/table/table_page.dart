import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class TablePage extends StatefulWidget {
  final String title;
  const TablePage({Key key, this.title = "Table"}) : super(key: key);

  @override
  _TablePageState createState() => _TablePageState();
}

class _TablePageState extends State<TablePage> {
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
            RaisedButton(
              child: Container(
                alignment: Alignment.center,
                child: Text("Table"),
              ),
              onPressed: () {
                Modular.to.pushNamed('/home/table/table');
              },
            ),
            RaisedButton(
              child: Container(
                alignment: Alignment.center,
                child: Text("DataTable"),
              ),
              onPressed: () {
                Modular.to.pushNamed('/home/table/datatable');
              },
            ),
          ],
        ),
      ),
    );
  }
}
