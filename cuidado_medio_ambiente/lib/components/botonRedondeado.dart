import 'package:flutter/material.dart';

class BotonRedondeado extends StatelessWidget {
  final String texto;
  final VoidCallback press;
  final Color colorFondo, colorTexto;

  const BotonRedondeado(
      {super.key,
      required this.texto,
      required this.press,
      this.colorFondo = const Color.fromARGB(255, 0, 128, 55),
      this.colorTexto = Colors.white});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      width: size.width * 0.8,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
              backgroundColor: colorFondo,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(29))),
          onPressed: press,
          child: Text(
            texto,
            style: TextStyle(color: colorTexto, fontWeight: FontWeight.bold),
          )),
    );
  }
}
