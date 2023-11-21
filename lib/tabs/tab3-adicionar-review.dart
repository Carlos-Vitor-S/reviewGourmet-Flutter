import 'package:flutter/material.dart';
import 'package:app/components/customButton.dart';
import 'package:app/components/customInputField.dart';
import 'package:app/pages/cadastrarLocal.dart';
import 'package:app/paleta_cores.dart';

class AdicionarReview extends StatelessWidget {
  final TextEditingController nomeEstabelecimentoController =
      TextEditingController();
  final TextEditingController descricaoController = TextEditingController();

  void createUser() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title:
            Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
          Row(
            children: [
              Icon(Icons.add, color: Colors.white), // Ícone de "mais"
              TextButton(
                  onPressed: () {},
                  child: Text(
                    "Review",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  )),
            ],
          ),
          SizedBox(width: 130),
          Row(
            children: [
              Icon(Icons.add, color: Colors.white), // Ícone de "mais"
              TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CadastrarLocal()));
                  },
                  child: Text(
                    "Local",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  )),
            ],
          ),
        ]),
        elevation: 1000,
        backgroundColor: reviewgourmet,
        shadowColor: Colors.black,
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 20),
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: <Widget>[
            CustomInputField(
              controller: nomeEstabelecimentoController,
              hintText: "Estabelecimento",
              obscureText: false,
              labeltext: "Selecione o seu Estabelecimento",
            ),

            // Adicione o campo de texto aqui
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                  controller: descricaoController,
                  keyboardType: TextInputType.multiline,
                  maxLines: 4,
                  obscureText: false,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                        borderSide: BorderSide(
                      color: Colors.grey,
                      width: 2.0,
                      style: BorderStyle.solid,
                    )),
                    labelText: "Descrição",
                    hintText: "Descrição (Opcional)",
                  )),
            ),

            Align(
              alignment: Alignment.center,
              child: Container(
                width: 200,
                height: 40,
                child: CustomButton(onTap: createUser),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
