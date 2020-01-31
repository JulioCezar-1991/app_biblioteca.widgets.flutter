import 'package:flutter/material.dart';

class InputTextField extends StatefulWidget {
  @override
  _InputTextFieldState createState() => _InputTextFieldState();
}

class _InputTextFieldState extends State<InputTextField> {
  TextEditingController _controllerEntrada = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("InputTextField"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.fromLTRB(32, 32, 32, 5),
              child: Text(
                "Entrada de Valor",
                style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(32, 5, 32, 0),
              child: TextField(
                keyboardType: TextInputType.number, //Define  o Tipo do Teclado
                decoration: InputDecoration(labelText: "Digite o Valor"),
                controller: _controllerEntrada, //Controlador de entada de dado
              ),
            ),
            RaisedButton(
              child: Text(
                "Consultar",
              ),
              onPressed: () {
                print(
                  "O valor Digitado foi " + this._controllerEntrada.text,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
