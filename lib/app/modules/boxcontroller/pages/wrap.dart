import 'dart:math';

import 'package:flutter/material.dart';

class WrapExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List colors = [
      Colors.red,
      Colors.green,
      Colors.yellow,
      Colors.amber,
      Colors.blueAccent,
      Colors.orange
    ];

    List nomes = [
      "Julio",
      "Neide",
      "Laynna",
      "Chico",
      "Meire",
      "Bia",
    ];

    Random random = Random();

    return Scaffold(
      appBar: AppBar(
        title: Text("Wrap"),
      ),
      body: Center(
        // O Widget é utilizado para organizar container na tela.
        child: Wrap(
          children: <Widget>[
            for (int i = 0; i <= 5; i++)
              Padding(
                padding: EdgeInsets.all(4),
                child: GestureDetector(
                  child: Container(
                    color: colors[random.nextInt(6)],
                    height: 100,
                    width: 100,
                    child: Text(nomes[random.nextInt(6)]),
                    alignment: Alignment.center,
                  ),
                ),
              )
          ],
        ),
      ),
    );
  }
}
