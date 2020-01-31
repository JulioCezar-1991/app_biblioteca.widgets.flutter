import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';

class SqflitePage extends StatefulWidget {
  final String title;
  const SqflitePage({Key key, this.title = "Sqflite"}) : super(key: key);

  @override
  _SqflitePageState createState() => _SqflitePageState();
}

class _SqflitePageState extends State<SqflitePage> {
  /* _recuperarDados() async {
    var caminhoBancoDados = await getDatabasesPath();
    String localBancoDados = join(caminhoBancoDados, 'banco.db');

    var bd = await openDatabase(localBancoDados, version: 1,
        onCreate: (db, dbVersaoRecente) {
      String sql =
          "CREATE TABLE usuarios (id INTEGER PRIMARY KEY AUTOINCREMENT, nome VARCHAR, idade INTEGER) ";
      db.execute(sql);
    });
    return bd;
  }

  _salvarDados() async {
    Database bd = await _recuperarDados();
    Map<String, dynamic> dadosUsuario = {"nome": "Julio", "idade": 58};
    int id = await bd.insert("usuarios", dadosUsuario);
    print("Salvo: $id ");
  }

  _listarDados() async {
    Database bd = await _recuperarDados();

    String sql = "SELECT * FROM usuarios";
    List usuarios = await bd.rawQuery(sql);

    for (var usuario in usuarios) {
      print(
          "nome: " + usuario['nome'] + " Idade " + usuario['idade'].toString());
    }
  } */

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[],
      ),
    );
  }
}
