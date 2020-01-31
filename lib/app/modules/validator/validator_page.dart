import 'package:cpf_cnpj_validator/cnpj_validator.dart';
import 'package:cpf_cnpj_validator/cpf_validator.dart';
import 'package:flutter/material.dart';

class ValidatorPage extends StatefulWidget {
  final String title;
  const ValidatorPage({Key key, this.title = "CPF - CNPJ"}) : super(key: key);

  @override
  _ValidatorPageState createState() => _ValidatorPageState();
}

class _ValidatorPageState extends State<ValidatorPage> {
  TextEditingController _controllerCPF = TextEditingController();
  TextEditingController _controllerCNPJ = TextEditingController();

  String _cpf = "";
  String _cnpj = "";
  String _validadorCPF = "";
  String _validadorCNPJ = "";

  String _formatarCPF() {
    setState(() {
      _cpf = CPFValidator.format(_controllerCPF.text);
    });
    if (CPFValidator.isValid(_cpf) == false) {
      if (_cpf.length < 1) {
        _validadorCPF = "Digite seu CPF";
        return _validadorCPF;
      }

      setState(() {
        _validadorCPF = "CPF invalido";
      });
      return _validadorCPF;
    }
    return _cpf;
  }

  String _formatarCNPJ() {
    setState(() {
      _cnpj = CNPJValidator.format(_controllerCNPJ.text);
    });
    if (CNPJValidator.isValid(_cnpj) == false) {
      if (_cnpj.length < 1) {
        _validadorCNPJ = "Digite seu CNPJ";
        return _validadorCNPJ;
      }
      setState(() {
        _validadorCNPJ = "CNPJ invalido";
      });
      return _validadorCNPJ;
    }
    return _cnpj;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              maxLength: 11,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: "Digite o seu CPF"),
              controller: _controllerCPF,
              onTap: () {},
            ),
            RaisedButton(
              child: Text("Enter"),
              onPressed: () {
                _formatarCPF();
              },
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Center(
                child: Text(_formatarCPF()),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            TextField(
              maxLength: 14,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: "Digite o seu CNPJ"),
              controller: _controllerCNPJ,
              onTap: () {},
            ),
            RaisedButton(
              child: Text("Enter"),
              onPressed: () {
                _formatarCNPJ();
              },
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Center(
                child: Text(_formatarCNPJ()),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
