import 'package:flutter/material.dart';

class BotonPlano extends StatelessWidget {
  final String texto;
  final VoidCallback press;
  final Color color;

  const BotonPlano(
      {super.key,
      required this.texto,
      required this.press,
      this.color = const Color.fromARGB(255, 0, 128, 55)});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      width: double.infinity,
      child: ElevatedButton(
        onPressed: press,
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
          backgroundColor: const Color.fromARGB(255, 0, 128, 55),
        ),
        child: Text(
          texto,
          textAlign: TextAlign.center,
          style: const TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic
              // fontFamily: 'IndieFlower-Regular',
              ),
        ),
      ),
    );
  }
}
