/* import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

void main() async {
  Firestore db = Firestore.instance;

/*   QuerySnapshot querySnapshot = await db.collection("usuarios")
  //.where("nome", isEqualTo: "Pedro")
  //.where("idade", isEqualTo: 16)
  .where("idade", isGreaterThan: 15)
  .where("idade", isLessThanOrEqualTo: 27)
  .orderBy("idade", descending: true)
  .orderBy("nome", descending: false)
  .limit(1)
  .getDocuments();

  for(DocumentSnapshot item in querySnapshot.documents){
    var dados = item.data;
    print("filtro nome: ${dados["nome"]} - idade: ${dados["idade"]}");
  } */

  QuerySnapshot querySnapshot = await db
      .collection("usuarios")
      .where("nome", isGreaterThanOrEqualTo: "Pa")
      .where("nome", isLessThanOrEqualTo: "Pa" + "\uf8ff")
      .getDocuments();

  for (DocumentSnapshot item in querySnapshot.documents) {
    var dados = item.data;
    print("filtro nome: ${dados["nome"]} - idade: ${dados["idade"]}");
  }

  runApp(FilterExample());
}

class FilterExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
 */