import 'package:app/components/customButton.dart';
import 'package:app/components/customInputField.dart';

import 'package:app/paleta_cores.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CadastrarUsuario extends StatelessWidget {
  final nomeController = TextEditingController();
  final dataNascimentoController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  //endereços
  final estadoController = TextEditingController();
  final cidadeController = TextEditingController();
  final cepController = TextEditingController();
  final ruaController = TextEditingController();
  final bairroController = TextEditingController();
  final numeroCasaController = TextEditingController();
  void createUser() {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Cadastrar Usuário"),
        elevation: 1000,
        backgroundColor: reviewgourmet,
        shadowColor: Colors.black,
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 20),
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ListView(children: <Widget>[
              CustomInputField(
                controller: nomeController,
                hintText: "Nome",
                obscureText: false,
                labeltext: "Nome",
              ),
              CustomInputField(
                controller: cidadeController,
                hintText: "Cidade",
                obscureText: false,
                labeltext: "Cidade",
              ),
            ]),

            // ... outros CustomInputField ...

            ElevatedButton(
              onPressed: createElement,
              child: Text("Criar"),
            ),
          ],
        ),
      ),
    );
  }
}
