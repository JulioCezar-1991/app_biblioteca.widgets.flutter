import 'package:flutter/material.dart';

class FloatingActionButtonPage extends StatefulWidget {
  @override
  _FloatingActionButtonPageState createState() =>
      _FloatingActionButtonPageState();
}

class _FloatingActionButtonPageState extends State<FloatingActionButtonPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FloatingActionButton"),
      ),
      body: Container(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton.extended(
        /* shape: BeveledRectangleBorder(
          borderRadius: BorderRadius.circular(9)
        ), */
        backgroundColor: Colors.purple[100],
        foregroundColor: Colors.purple,
        elevation: 6,
        icon: Icon(Icons.assignment_return),
        label: Text("Comprar"),
        onPressed: () {},
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          children: <Widget>[
            IconButton(
              onPressed: null,
              icon: Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}
