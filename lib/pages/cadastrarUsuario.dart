import 'package:app/components/customButton.dart';
import 'package:app/components/customInputField.dart';

import 'package:app/paleta_cores.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CadastrarUsuario extends StatelessWidget {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
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
              controller: emailController,
              hintText: "Email",
              obscureText: false,
              labeltext: "Email"),
          CustomInputField(
              controller: passwordController,
              hintText: "Senha",
              obscureText: true,
              labeltext: "Senha"),
          CustomInputField(
              controller: emailController,
              hintText: "Email",
              obscureText: false,
              labeltext: "Email"),
          CustomInputField(
              controller: emailController,
              hintText: "Email",
              obscureText: false,
              labeltext: "Email"),
          CustomInputField(
              controller: emailController,
              hintText: "Email",
              obscureText: false,
              labeltext: "Email"),
          CustomInputField(
              controller: emailController,
              hintText: "Email",
              obscureText: false,
              labeltext: "Email"),
          CustomInputField(
              controller: emailController,
              hintText: "Email",
              obscureText: false,
              labeltext: "Email"),
          CustomInputField(
              controller: emailController,
              hintText: "Email",
              obscureText: false,
              labeltext: "Email"),
          CustomInputField(
              controller: emailController,
              hintText: "Email",
              obscureText: false,
              labeltext: "Email"),
          CustomInputField(
              controller: emailController,
              hintText: "Email",
              obscureText: false,
              labeltext: "Email"),
          CustomInputField(
              controller: emailController,
              hintText: "Email",
              obscureText: false,
              labeltext: "Email"),
          CustomInputField(
              controller: emailController,
              hintText: "Email",
              obscureText: false,
              labeltext: "Email"),
          CustomInputField(
              controller: emailController,
              hintText: "Email",
              obscureText: false,
              labeltext: "Email"),
          CustomInputField(
              controller: emailController,
              hintText: "Email",
              obscureText: false,
              labeltext: "Email"),
          CustomInputField(
              controller: emailController,
              hintText: "Email",
              obscureText: false,
              labeltext: "Email"),
          CustomInputField(
              controller: emailController,
              hintText: "Email",
              obscureText: false,
              labeltext: "Email"),
          CustomInputField(
              controller: emailController,
              hintText: "Email",
              obscureText: false,
              labeltext: "Email"),
          Container(
              width: 200, height: 40, child: CustomButton(onTap: createUser))
        ]),
      ),
    );
  }
}
