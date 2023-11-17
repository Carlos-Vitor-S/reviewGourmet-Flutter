import 'package:app/components/customCard.dart';

import 'package:flutter/material.dart';

class Favoritos extends StatelessWidget {
  final String asset = "lib/assets/burguer.png";
  final String local = "Local: Farolandia - Aracaju/SE";
  final String nome = "Hamburgueria X";

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          CustomCard(
            caminhoAsset: asset,
            localRestaurante: local,
            nomeRestaurante: nome,
          ),
        ],
      ),
    );
  }
}
