import 'package:flutter/material.dart';

class Redirecionar extends StatelessWidget {
  const Redirecionar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
        alignment: Alignment.center,
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Text("realize o Login ou crie uma conta para continuar"),
        ),
      ),
    );
  }
}
