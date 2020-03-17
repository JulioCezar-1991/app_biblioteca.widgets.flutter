import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../components/custom_botton_widget.dart';

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
        child: ListView(
          children: <Widget>[
            CustomBotton(
              title: 'Table',
              onPressed: () {
                Modular.to.pushNamed('/home/table/table');
              },
            ),
            CustomBotton(
              title: 'DataTable',
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
