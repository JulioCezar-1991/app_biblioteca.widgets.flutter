import 'package:flutter/material.dart';

class InputRadioButton extends StatefulWidget {
  @override
  _InputRadioButtonState createState() => _InputRadioButtonState();
}

class _InputRadioButtonState extends State<InputRadioButton> {
  
  String _escolhaSexo;
  String _escolhaCidade;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("InputRadioButton"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Text(
              "Escolha Vestical",
              style: TextStyle(fontSize: 20),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Radio(
                  value: "M",
                  groupValue: _escolhaSexo,
                  onChanged: (String escolha) {
                    setState(
                      () {
                        this._escolhaSexo = escolha;
                      },
                    );
                  },
                ),
                Text("Masculino"),
                Radio(
                  value: "F",
                  groupValue: this._escolhaSexo,
                  onChanged: (String escolha) {
                    setState(
                      () {
                        this._escolhaSexo = escolha;
                      },
                    );
                  },
                ),
                Text("Feminino"),
              ],
            ),
            Text(
              "Escolha Horizontal",
              style: TextStyle(fontSize: 20),
            ),
            Column(
              children: <Widget>[
                RadioListTile(
                  title: Text("Goiânia"),
                  value: "Goiânia",
                  groupValue: _escolhaCidade,
                  onChanged: (String valor) {
                    setState(() {
                      _escolhaCidade = valor;
                    });
                  },
                ),
                RadioListTile(
                  title: Text("Ap Goiânia"),
                  value: "Ap Goiânia",
                  groupValue: _escolhaCidade,
                  onChanged: (String valor) {
                    setState(() {
                      _escolhaCidade = valor;
                    });
                  },
                ),
                RadioListTile(
                  title: Text("Trindade"),
                  value: "Trindade",
                  groupValue: _escolhaCidade,
                  onChanged: (String valor) {
                    setState(() {
                      _escolhaCidade = valor;
                    });
                  },
                ),
                RaisedButton(
                  child: Text("Resultado"),
                  onPressed: () {
                    print("Escolha de sexo: " + this._escolhaSexo);
                    print("Escolha da cidade: " + this._escolhaCidade);
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
