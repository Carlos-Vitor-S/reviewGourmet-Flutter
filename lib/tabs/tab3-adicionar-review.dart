import 'package:app/pages/cadastrarLocal.dart';
import 'package:app/paleta_cores.dart';
import 'package:flutter/material.dart';

class AdicionarReview extends StatelessWidget {
  @override
  void signUserIn() {}

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
    );
  }
}
