/* import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

void main() async {

  Firestore db = Firestore.instance;

// Cria um Novo Registro e Coleçao
/*   db
      .collection("usuarios")
      .document("005")
      .setData({"nome": "Laynna Gonçalves", "idade": "27"}); */


// Cria um Novo Registro e guarda os dados em uma variavel
/*   DocumentReference ref = await db.collection("noticias").add(
    {
      "titulo": "Criada a nova moeda",
      "descricao": "Texto de exemplo",
    },
  );

  print("Item Salvo" +ref.documentID); */

/*   db.collection("noticias").document("sbyIeOXzQAFO7NeJ5tdM").setData(
    {"descricao": "Texto de exemplo atualizado"},
  ); */


//Deleta Item Pelo ID
/*  db.collection("usuarios").document("003").delete();  */

// Atualizar Item Pelo ID
/* db.collection("usuarios").document("003").updateData({"idade": 18}); */

// Ler Dados De apenas um Usuario Pelo Id
/* DocumentSnapshot snapshot = await db.collection("usuarios").document("001").get();
var dados = snapshot.data;
print("nome: ${dados["nome"]}  idade: ${dados["idade"]}"); */


//Recuperar todos os dados da tabela e cria uma lista
/*   QuerySnapshot querySnapshot = await db.collection("usuarios").getDocuments();

  for (DocumentSnapshot item in querySnapshot.documents) {
    var dados = item.data;
    print(dados);
    print("nome: ${dados["nome"]}  idade: ${dados["idade"]}");
  } */


//Recuperar todos os dados da tabela com um ouvinte, toda vez que ouver mudanças no banco de dados o Firebase ira notificar
  db.collection("usuarios").snapshots().listen((snapshot) {
    for (DocumentSnapshot item in snapshot.documents) {
      var dados = item.data;
      print("nome: ${dados["nome"]} - idade: ${dados["idade"]}");
    }
  }); 

  runApp(CRUDExample());
}

class CRUDExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
} */