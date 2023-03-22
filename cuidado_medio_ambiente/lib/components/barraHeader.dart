import 'package:flutter/material.dart';

class BarraHeader extends StatelessWidget {
  final String titulo;
  final String imagen;
  final Color color;
  const BarraHeader({
    super.key,
    required this.titulo,
    required this.imagen,
    this.color = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 0, 128, 55),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25))),
              child: const Icon(
                Icons.arrow_back,
                color: Colors.white,
              )),
          Image(
            image: AssetImage(imagen),
            height: 80,
          ),
          Text(
            titulo,
            style: TextStyle(
                fontSize: 25, fontFamily: 'Chewy-Regular', color: color),
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
