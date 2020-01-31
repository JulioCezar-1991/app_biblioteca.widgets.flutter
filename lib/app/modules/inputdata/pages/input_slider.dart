import 'package:flutter/material.dart';

class InputSlider extends StatefulWidget {
  @override
  _InputSliderState createState() => _InputSliderState();
}

class _InputSliderState extends State<InputSlider> {
  double _localBarra = 5;
  double _posicao = 5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("InputSlider"),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 60, left: 20, right: 20),
            child: Slider(
              value: _localBarra,
              min: 1,
              max: 10,
              label: "${this._posicao.toInt()}",
              divisions: 5,
              onChanged: (double x) {
                setState(() {
                  _posicao = x;
                  _localBarra = x;
                });
              },
            ),
          ),
          Text("Volume"),
          RaisedButton(
            child: Text("Consultar"),
            onPressed: () {
              print("Posição do marcado: ${this._posicao.toInt()}");
            },
          )
        ],
      ),
    );
  }
}
