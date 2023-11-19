import 'package:app/paleta_cores.dart';
import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'app.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MyAppState(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'ReviewGourmet',
        theme: ThemeData(
          useMaterial3: true,
          primarySwatch: reviewgourmet,
          colorScheme: ColorScheme.fromSwatch(
            cardColor: Colors.white,
            primarySwatch: reviewgourmet,
            backgroundColor: Colors.white,
          ),
        ),
        home: App(),
      ),
    );
  }
}

class MyAppState extends ChangeNotifier {
  var current = WordPair.random();
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>();

    return Scaffold();
  }
}
