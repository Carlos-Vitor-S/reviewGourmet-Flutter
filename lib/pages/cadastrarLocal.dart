import 'package:app/components/customButton.dart';
import 'package:app/components/customInputField.dart';
import 'package:app/paleta_cores.dart';
import 'package:app/tabs/tab3-adicionar-review.dart';

import 'package:flutter/material.dart';

class CadastrarLocal extends StatelessWidget {
  const CadastrarLocal({super.key});
  void createUser() {}
  @override
  Widget build(BuildContext context) {
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

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Cadastrar Local"),
        elevation: 1000,
        backgroundColor: reviewgourmet,
        shadowColor: Colors.black,
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 18),
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomInputField(
              controller: nomeController,
              hintText: "Nome",
              obscureText: false,
              labeltext: "Nome",
            ),
            // ... outros CustomInputField ...
            CustomInputField(
              controller: cidadeController,
              hintText: "Cidade",
              obscureText: false,
              labeltext: "Cidade",
            ),
            GridView.count(
              crossAxisCount: 2,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              children: [
                CustomInputField(
                  controller: bairroController,
                  hintText: "Bairro",
                  obscureText: false,
                  labeltext: "Bairro",
                ),
                CustomInputField(
                  controller: numeroCasaController,
                  hintText: "Número",
                  obscureText: false,
                  labeltext: "Número",
                ),
              ],
            ),
            // Espaço entre o GridView e o botão
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
