import 'package:flutter/material.dart';

class DismissibleExample extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dismissible"),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) => Dismissible(
          key: Key(index.toString()),
          background: Container(
            color: Colors.red,
          ),
          onDismissed: onDismissed(index),
          movementDuration: Duration(seconds: 1),
          secondaryBackground: Container(
            color: Colors.yellow,
          ),
          child: ListTile(
            title: Text("Tile $index"),
          ),
        ),
      ),
    );
  }

  onDismissed(int index) {
    print("$index removed");
  }
}
