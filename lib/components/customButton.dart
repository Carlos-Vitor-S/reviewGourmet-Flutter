import 'package:app/paleta_cores.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Function()? onTap;

  const CustomButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: Container(
          width: 200,
          height: 40,
          margin: EdgeInsets.only(top: 9),
          child: ElevatedButton(
              child: const Center(
                  child: Text(
                "Entrar",
                style: TextStyle(fontSize: 16),
              )),
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: reviewgourmet,
                elevation: 2,
              ),
              onPressed: onTap),
        ));
  }
}
