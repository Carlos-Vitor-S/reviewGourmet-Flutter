// ignore: file_names
import 'package:app/components/customButton.dart';
import 'package:app/components/customInputField.dart';

import 'package:app/paleta_cores.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CadastrarUsuario extends StatelessWidget {
  final nomeController = TextEditingController();
  final sobrenomeController = TextEditingController();
  final dataDeNascimentoController = TextEditingController();
  final emailController = TextEditingController();
  final senhaController = TextEditingController();
  final cidadeController = TextEditingController();
  final ruaController = TextEditingController();
  final numeroController = TextEditingController();
  final bairroController = TextEditingController();
  final estadoController = TextEditingController();
  final cepController = TextEditingController();
  
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
        child: ListView(children: <Widget>[
                CustomInputField(
                      controller: nomeController,
                      hintText: "Nome",
                      obscureText: false,
                      labeltext: "Insira seu nome"),
                  CustomInputField(
                      controller: sobrenomeController,
                      hintText: "Sobrenome",
                      obscureText: false,
                      labeltext: "Insira seu sobrenome"),
                  CustomInputField(
                      controller: dataDeNascimentoController,
                      hintText: "DataDeNascimento",
                      obscureText: false,
                      labeltext: "Insira sua Data de Nascimento"),
                  CustomInputField(
                      controller: emailController,
                      hintText: "Email",
                      obscureText: false,
                      labeltext: "Insira seu Email"),
                  CustomInputField(
                      controller: senhaController,
                      hintText: "Senha",
                      obscureText: true,
                      labeltext: "Insira uma Senha"),
                  CustomInputField(
                      controller: cidadeController,
                      hintText: "Cidade",
                      obscureText: false,
                      labeltext: "Insira sua Cidade"),
                  CustomInputField(
                      controller: ruaController,
                      hintText: "Rua",
                      obscureText:false,
                      labeltext: "Insira sua Rua"),
                  CustomInputField(
                      controller: bairroController,
                      hintText: "Bairro",
                      obscureText:false,
                      labeltext: "Insira seu Bairro"),
                  CustomInputField(
                      controller: numeroController,
                      hintText: "Número Residêncial",
                      obscureText:false,
                      labeltext: "Insira o Número da sua Residência"),
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
                      
                  Align(
                      alignment: Alignment.center,
                      child: Container(
                      width: 200, height: 40, child: CustomButton(onTap: createUser)),
          ),              
        ]),
      ),
    );
  }
}
