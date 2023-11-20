import 'package:app/components/customButton.dart';
import 'package:app/components/customInputField.dart';
import 'package:app/pages/cadastrarUsuario.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Perfil extends StatelessWidget {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  // sign user in method email e senha
  void signUserIn() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text, password: passwordController.text);
  }

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
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
                          child: Text("Ainda Não Possui Cadastro?",
                              style: TextStyle(
                                color: Color.fromARGB(255, 6, 65, 112),
                                fontSize: 13,
                              )),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => CadastrarUsuario()));
                          },
                        )
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
