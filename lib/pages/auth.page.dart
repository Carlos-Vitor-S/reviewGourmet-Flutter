import 'package:app/app.dart';
import 'package:app/pages/cadastrarLocal.dart';

import 'package:app/pages/perfilEfetuado.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          //Ver se o Usuario está Logado ou não
          if (snapshot.hasData) {
            return PerfilEfetuado();
          } else {
            return App();
          }
        },
      ),
    );
  }
}
