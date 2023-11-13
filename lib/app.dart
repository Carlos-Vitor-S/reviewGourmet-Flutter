import 'package:app/tabs/tab1-home.dart';
import 'package:app/tabs/tab2-reviews.dart';
import 'package:app/tabs/tab3-adicionar-review.dart';
import 'package:app/tabs/tab5-perfil.dart';
import 'package:app/tabs/tab4-favoritos.dart';
import 'package:flutter/material.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  int _selectIndex = 0;
  void _navigationBottomBar(int index) {
    setState(() {
      _selectIndex = index;
    });
  }

  //Lista das paginas que ficarão nas tabs

  final List<Widget> _pages = [
    Home(),
    Reviews(),
    AdicionarReview(),
    Favoritos(),
    Perfil(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectIndex,
          type: BottomNavigationBarType.fixed,
          onTap: _navigationBottomBar,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.article_outlined), label: "Reviews"),
            BottomNavigationBarItem(
                icon: Icon(Icons.add_circle), label: "Adicionar"),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite_border), label: "Favoritos"),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle_outlined), label: "Perfil"),
          ]),
    );
  }
}
