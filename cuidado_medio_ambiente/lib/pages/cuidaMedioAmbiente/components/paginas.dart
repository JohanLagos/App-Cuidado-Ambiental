import 'package:flutter/material.dart';

class PaginasReduce extends StatelessWidget {
  final String img;
  final String titulo;
  final String contenido;

  const PaginasReduce(
      {super.key,
      required this.img,
      required this.titulo,
      required this.contenido});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      // backgroundColor: Colors.green,
      // backgroundColor: const Color.fromARGB(255, 70, 69, 69),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 30),
          child: Column(
            children: [
              Column(
                children: [
                  Image(
                    image: AssetImage(img),
                    height: 250,
                  ),
                  SizedBox(
                    height: size.height *
                        0.06, // Espacio entre la imagen y el titulo
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Text(
                      titulo,
                      style: TextStyle(
                          color: Colors.green.shade900,
                          fontSize: 50,
                          // fontWeight: FontWeight.bold,
                          fontFamily: 'TitanOne-Regular'),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(
                    height: size.height *
                        0.03, // Espacio entre el tittulo y el boton
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Text(
                      contenido,
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontFamily: 'IndieFlower-Regular'),
                      textAlign: TextAlign.justify,
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
