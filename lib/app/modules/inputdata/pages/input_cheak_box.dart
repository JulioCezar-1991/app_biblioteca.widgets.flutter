import 'package:flutter/material.dart';

class InputCheakBox extends StatefulWidget {
  @override
  _InputCheakBoxState createState() => _InputCheakBoxState();
}

class _InputCheakBoxState extends State<InputCheakBox> {
  bool _estaSelecionado1 = false;
  bool _estaSelecionadoBr = false;
  bool _estaSelecionadoMe = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        title: Text("CkeakBox"),
      ),
      body: Container(
    
        padding: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            Text("Comida Brasileira"),
            Checkbox(
                value: _estaSelecionado1,
                onChanged: (bool valor) {
                  setState(() {
                    this._estaSelecionado1 = valor;
                  });
                }),
            CheckboxListTile(
              
              title: Text("Comida Mexicana"),
              value: _estaSelecionadoBr,
              subtitle: Text("A Melhor Comida do Mundo!"),
              selected: _estaSelecionadoBr,
              activeColor: Colors.blueAccent,
              secondary: Icon(Icons.fastfood),
              onChanged: (bool valor) {
                setState(() {
                  this._estaSelecionadoBr = valor;
                });
              },
            ),
            CheckboxListTile(
              title: Text("Comida Brasileira"),
              value: _estaSelecionadoMe,
              subtitle: Text("A Melhor Comida do Mundo!"),
              selected: _estaSelecionadoMe,
              activeColor: Colors.blueAccent,
              secondary: Icon(Icons.fastfood),
              onChanged: (bool valor) {
                setState(() {
                  this._estaSelecionadoMe = valor;
                });
              },
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: RaisedButton(
                child: Text("Salvar"),
                onPressed: () {
                  print("Comida Brasileira " + _estaSelecionadoBr.toString());
                  print("Comida Mexicana " + _estaSelecionadoMe.toString());
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
