import 'package:app/components/customCard.dart';
import 'package:app/paleta_cores.dart';

import 'package:flutter/material.dart';

class Reviews extends StatelessWidget {
  final String asset = "lib/assets/burguer.png";
  final String local = "Local: Farolandia - Aracaju/SE";
  final String nome = "Hamburgueria X";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Meus Reviews"),
        elevation: 1000,
        backgroundColor: reviewgourmet,
        shadowColor: Colors.black,
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 20),
        foregroundColor: Colors.white,
      ),
      body: Column(
        children: [
          CustomCard(
            caminhoAsset: asset,
            localRestaurante: local,
            nomeRestaurante: nome,
          ),
          CustomCard(
            caminhoAsset: "lib/assets/restaurante.png",
            localRestaurante: "Local: Farolandia - Aracaju/SE",
            nomeRestaurante: "Restaurante Y",
          ),
        ],
      ),
    );
  }
}
