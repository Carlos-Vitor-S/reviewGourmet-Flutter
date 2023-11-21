import 'package:app/components/customCard.dart';
import 'package:app/paleta_cores.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  final String asset = "lib/assets/burguer.png";
  final String local = "Local: Farolandia - Aracaju/SE";
  final String nome = "Hamburgueria xs";

  Widget _buildProgrammCard() {
    return Container(
      height: 250,
      child: Card(
        child: Image.asset(
          'lib/assets/homeFoto.jpg',
          fit: BoxFit.cover,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        elevation: 5,
        margin: EdgeInsets.all(10),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Reviews"),
        elevation: 1000,
        backgroundColor: reviewgourmet, // Alterei para uma cor padrão
        shadowColor: Colors.black,
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 20),
        foregroundColor: Colors.white,
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              showSearch(
                context: context,
                delegate: CustomSearchDelegate(), // Implemente esta classe
              );
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _buildProgrammCard(), // Cartão programático no topo
            CustomCard(
              caminhoAsset: asset,
              localRestaurante: local,
              nomeRestaurante: nome,
            ),
            CustomCard(
              caminhoAsset: "lib/assets/placaRestaurante.jpg",
              localRestaurante: "Local: Farolandia - Aracaju/SE",
              nomeRestaurante: "Restaurante DS",
            ),
          ],
        ),
      ),
    );
  }
}

class CustomSearchDelegate extends SearchDelegate<String> {
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {},
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () {
        close(context,
            Null as String); // Fechar a barra de pesquisa ao pressionar voltar
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    // Implemente os resultados da pesquisa aqui
    return Container();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // Implemente as sugestões de pesquisa aqui
    return Container();
  }
}
