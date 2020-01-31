import 'package:flutter/material.dart';

class TableExample extends StatefulWidget {
  @override
  _TableExampleState createState() => _TableExampleState();
}

class _TableExampleState extends State<TableExample> {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text("Table"),
      ),
      body: Table(
        textDirection: TextDirection.rtl,
        defaultColumnWidth: FlexColumnWidth(10.0),
        children: [
          TableRow(children: [
            Padding(
              padding: const EdgeInsets.all(8),
              child: Container(
                alignment: Alignment.center,
                color: Colors.blueAccent,
                width: media.width / 4,
                height: media.height / 4,
                child: Text("Conteúdo"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Container(
                alignment: Alignment.center,
                color: Colors.blueAccent,
                width: media.width / 4,
                height: media.height / 4,
                child: Text("Conteúdo"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Container(
                alignment: Alignment.center,
                color: Colors.blueAccent,
                width: media.width / 4,
                height: media.height / 4,
                child: Text("Conteúdo"),
              ),
            ),
          ]),
          TableRow(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  color: Colors.blue,
                  width: media.width / 8,
                  height: media.height / 8,
                  child: Text("Conteúdo"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  color: Colors.blueAccent,
                  width: media.width / 8,
                  height: media.height / 8,
                  child: Text("Conteúdo"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  color: Colors.blue,
                  width: media.width / 8,
                  height: media.height / 8,
                  child: Text("Conteúdo"),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
