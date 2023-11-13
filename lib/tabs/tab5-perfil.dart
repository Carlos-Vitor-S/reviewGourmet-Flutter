import 'package:flutter/material.dart';

class Perfil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 4,
            child: Container(
              alignment: Alignment.center,
              child: Image.asset(
                'assets/logoEditada.png',
              ),
            ),
          ),
          Expanded(
            flex: 6,
            child: Container(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(11),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Email',
                        hintText: 'Email',
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Senha',
                        hintText: 'Senha',
                      ),
                    ),
                  ),
                  Container(
                    width: 200,
                    height: 40,
                    margin: EdgeInsets.only(top: 24),
                    child: ElevatedButton(
                      child: Text("Entrar"),
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.red,
                        elevation: 0,
                      ),
                      onPressed: () {},
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
