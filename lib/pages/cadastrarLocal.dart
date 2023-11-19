import 'package:app/components/customButton.dart';
import 'package:app/components/customInputField.dart';
import 'package:app/paleta_cores.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CadastrarLocal extends StatelessWidget {
  final cnpjController = TextEditingController();
  final nomeEstabelecimentoController = TextEditingController();
  final emailController = TextEditingController();
  final estadoController = TextEditingController();
  final cepController = TextEditingController();
  final cidadeController = TextEditingController();
  final ruaController = TextEditingController();
  final bairroController = TextEditingController();
  final numeroController = TextEditingController();
  
 void createUser() {}

  @override
  Widget build(BuildContext context) {
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
        padding: const EdgeInsets.all(10.0),
        child: ListView(children: <Widget>[
                CustomInputField(
                      controller: cnpjController,
                      hintText: "CNPJ",
                      obscureText: false,
                      labeltext: "Insira seu CNPJ"),
                  CustomInputField(
                      controller: nomeEstabelecimentoController,
                      hintText: "Estabelecimento",
                      obscureText: false,
                      labeltext: "Insira o Nome do Estabelecimento"),
                  CustomInputField(
                      controller: emailController,
                      hintText: "Email",
                      obscureText: false,
                      labeltext: "Insira seu Email"),
                  CustomInputField(
                      controller: estadoController,
                      hintText: "Estado",
                      obscureText:false,
                      labeltext: "Insira seu Estado"),
                  CustomInputField(
                      controller: cepController,
                      hintText: "CEP",
                      obscureText: false,
                      labeltext: "Insira CEP"),
                  CustomInputField(
                      controller: cidadeController,
                      hintText: "Cidade",
                      obscureText: false,
                      labeltext: "Insira sua Cidade"),
                  CustomInputField(
                      controller: ruaController,
                      hintText: "Rua",
                      obscureText:false,
                      labeltext: "Insira o Nome da Rua"),
                  CustomInputField(
                      controller: bairroController,
                      hintText: "Bairro",
                      obscureText:false,
                      labeltext: "Insira o Nome do Bairro"),
                  CustomInputField(
                      controller: numeroController,
                      hintText: "Número",
                      obscureText:false,
                      labeltext: "Insira o Número do Estabelecimento"),

                  Align(
                      alignment: Alignment.center,
                      child: Container(
                      width: 200, height: 40, child: CustomButton(onTap: createUser,)),
                  ),
        ],
        ),
      ),
    );
  }
}
