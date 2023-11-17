import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final String nomeRestaurante;
  final String localRestaurante;
  final String caminhoAsset;
  const CustomCard({
    super.key,
    required this.nomeRestaurante,
    required this.localRestaurante,
    required this.caminhoAsset,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      margin: const EdgeInsets.all(12),
      child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
        Column(
          children: [
            ListTile(
                leading: Container(
                    padding: const EdgeInsets.only(right: 6),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(4),
                        child: Image.asset(
                          caminhoAsset,
                          fit: BoxFit.cover,
                        ))),
                title: Text("$nomeRestaurante"),
                subtitle: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 6),
                      child: Row(
                        children: [
                          Icon(Icons.star, color: Colors.amber),
                          Icon(Icons.star, color: Colors.amber),
                          Icon(Icons.star, color: Colors.amber),
                          Icon(Icons.star, color: Colors.amber),
                          Icon(Icons.star, color: Colors.amber),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 7),
                      child: Row(
                        children: [
                          Text('$localRestaurante'),
                        ],
                      ),
                    ),
                  ],
                )),
          ],
        ),
      ]),
    );
  }
}
