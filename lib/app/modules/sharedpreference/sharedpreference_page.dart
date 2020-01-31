import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedpreferencePage extends StatefulWidget {
  final String title;
  const SharedpreferencePage({Key key, this.title = "SharedPreference"})
      : super(key: key);

  @override
  _SharedpreferencePageState createState() => _SharedpreferencePageState();
}

class _SharedpreferencePageState extends State<SharedpreferencePage> {
  String _textoSalvo = "";
  TextEditingController _controllerCampo = TextEditingController();

  String campo;

  _salvar() async {
    String valorDigitado = _controllerCampo.text;

    final prefs = await SharedPreferences.getInstance();
    await prefs.setString("nome", valorDigitado);

    setState(() {
      _textoSalvo = prefs.getString("nome") ?? "Sem valor";
    });

    print("operacao (Salvar): $valorDigitado");
  }

  _recuperar() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _textoSalvo = prefs.getString("nome") ?? "Sem valor";
    });
    print("operacao (Recuperar): $_textoSalvo");
  }

  _remover() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      prefs.remove("nome");
      _textoSalvo = prefs.getString("nome") ?? "Sem valor";
    });
    print("operacao (Remove): $_textoSalvo");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        padding: EdgeInsets.all(32),
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(20),
              child: Text(_textoSalvo),
            ),
            Padding(
              padding: EdgeInsets.all(4),
              child: TextField(
                decoration: InputDecoration(labelText: "Digite algo"),
                controller: _controllerCampo,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                RaisedButton(
                  child: Text("Salvar"),
                  onPressed: _salvar,
                ),
                RaisedButton(
                  child: Text("Ler"),
                  onPressed: _recuperar,
                ),
                RaisedButton(
                  child: Text("Remover"),
                  onPressed: _remover,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
