import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';


void main() async {

  FirebaseAuth auth = FirebaseAuth.instance;

  String email = "juliocezar@hotmail.com";
  String senha = "101010";

  //Criando Usuario
  /* auth.createUserWithEmailAndPassword(email: email ,password: senha).then((firebaseUser){
    print("Novo Usuario Criado ${firebaseUser.user.email}");
  }).catchError((error){
      print("Novo Usuario: erro ${error.toString()}");
  }); */

  //Deslogar Usuario
  //auth.signOut();

  //Logando Usuario
  auth.signInWithEmailAndPassword(email: email ,password: senha).then((firebaseUser){
    print("Sucesso ${firebaseUser.user.email}");
  }).catchError((error){
    print("Erro na autenticação ${error.toString()}");
  });
  
  
  //Verificar usuarios logados
  FirebaseUser usuarioAtual = await auth.currentUser();
  if(usuarioAtual != null){
    print("Usuario atual logado email: ${usuarioAtual.email} ");
  }else {
    print("Usuario está Deslogado");
  }

  runApp(FirebaseAuthExample());
}

class FirebaseAuthExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
