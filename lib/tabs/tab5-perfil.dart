import 'package:app/components/customButton.dart';
import 'package:app/components/customInputField.dart';
import 'package:flutter/material.dart';

class Perfil extends StatelessWidget {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  // sign user in method
  void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 4,
            child: Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(5),
              child: Image.asset(
                'lib/assets/logoEditada.png',
              ),
            ),
          ),
          Expanded(
            flex: 6,
            child: Container(
              child: Column(
                children: [
                  CustomInputField(
                      controller: emailController,
                      hintText: "Email",
                      obscureText: false,
                      labeltext: "Email"),
                  CustomInputField(
                      controller: passwordController,
                      hintText: "Senha",
                      obscureText: true,
                      labeltext: "Senha"),
                  const SizedBox(height: 15),

                  // forgot password?

                  // sign in button
                  CustomButton(
                    onTap: signUserIn,
                  ),

                  const SizedBox(height: 15),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Não Possui Cadastro? Clique aqui',
                            style: TextStyle(color: Colors.blue)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
