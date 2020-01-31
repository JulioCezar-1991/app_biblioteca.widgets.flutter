import 'package:flutter/material.dart';


class InputDataBetween extends StatefulWidget {
  @override
  _InputDataBetweenState createState() => _InputDataBetweenState();
}

class _InputDataBetweenState extends State<InputDataBetween> {

  TextEditingController _controllerEntrada = TextEditingController();

  void _navegacao() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => TelaSecundaria(valor: _controllerEntrada.text),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DataBetweenScreens"),
        backgroundColor: Colors.orange,
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(labelText: "Digite Seu Login"),
              controller: _controllerEntrada,
            ),
            RaisedButton(
              child: Text("Click"),
              onPressed: () {
                _navegacao();
              },
            )
          ]),
    );
  }
}

class TelaSecundaria extends StatefulWidget {

  final String valor;
  TelaSecundaria({this.valor}); // {} Parametro Opcional

  @override
  _TelaSecundariaState createState() => _TelaSecundariaState();
}

class _TelaSecundariaState extends State<TelaSecundaria> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tela Secuntaria"),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Text(
          "Valor Repassado: " + (this.widget.valor),
          style: TextStyle(
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
