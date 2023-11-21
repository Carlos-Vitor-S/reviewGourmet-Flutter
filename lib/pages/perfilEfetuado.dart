import 'package:app/paleta_cores.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class PerfilEfetuado extends StatefulWidget {
  @override
  State<PerfilEfetuado> createState() => _PerfilEfetuadoState();
}

class _PerfilEfetuadoState extends State<PerfilEfetuado> {
  final userAtual = FirebaseAuth.instance.currentUser?.email;

  void signOutUser() {
    FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Meu Perfil"),
          elevation: 1000,
          backgroundColor: reviewgourmet,
          shadowColor: Colors.black,
          titleTextStyle: TextStyle(color: Colors.white, fontSize: 20),
          foregroundColor: Colors.white,
          actions: [
            IconButton(onPressed: signOutUser, icon: Icon(Icons.logout))
          ],
        ),
        body: Center(child: Text("$userAtual Logou Com Sucesso ")));
  }
}
