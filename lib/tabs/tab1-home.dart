import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  void printForm() {
    String email = emailController.text;
    String senha = passwordController.text;
    debugPrint("Nome: $email");
    debugPrint("Nome: $senha");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("Home"),
    );
  }
}
