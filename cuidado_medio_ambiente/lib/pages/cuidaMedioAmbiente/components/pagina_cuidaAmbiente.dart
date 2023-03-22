import 'package:flutter/material.dart';

import '../../../components/barraHeader.dart';

class PaginaCuidaMedioAmbiente extends StatelessWidget {
  final String img;
  final String tituloHeader;
  final String titulo1;
  final String contenido1;
  final String titulo2;
  final String contenido2;

  const PaginaCuidaMedioAmbiente(
      {super.key,
      required this.img,
      required this.tituloHeader,
      required this.titulo1,
      required this.contenido1,
      required this.titulo2,
      required this.contenido2});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        // backgroundColor: const Color.fromARGB(255, 70, 69, 69),
        // backgroundColor: Colors.green,
        body: SingleChildScrollView(
      child: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/fondo11.jpg"),
                fit: BoxFit.cover)),
        padding: const EdgeInsets.symmetric(vertical: 30),
        child: Column(
          children: [
            BarraHeader(
                imagen: "assets/icons/hdOpcion.png", titulo: tituloHeader),
            SizedBox(
              height: size.height * 0.08, // Espacio entre la imagen y el titulo
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: [
                  Image(
                    image: AssetImage(img),
                    height: 250,
                  ),
                  SizedBox(
                    height: size.height *
                        0.08, // Espacio entre la imagen y el titulo
                  ),
                  Text(
                    titulo1,
                    style: const TextStyle(
                        color: Colors.amber,
                        fontSize: 30,
                        // fontWeight: FontWeight.bold,
                        fontFamily: 'TitanOne-Regular'),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: size.height *
                        0.04, // Espacio entre el tittulo y el boton
                  ),
                  Text(
                    contenido1,
                    style: const TextStyle(
                        // color: Colors.black,
                        fontSize: 15,
                        fontFamily: 'IndieFlower-Regular',
                        color: Colors.white),
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(
                    height: size.height *
                        0.05, // Espacio entre la imagen y el titulo
                  ),
                  Text(
                    titulo2,
                    style: const TextStyle(
                        color: Colors.greenAccent,
                        fontSize: 20,
                        // fontWeight: FontWeight.bold,
                        fontFamily: 'TitanOne-Regular'),
                    textAlign: TextAlign.left,
                  ),
                  SizedBox(
                    height: size.height *
                        0.04, // Espacio entre el tittulo y el boton
                  ),
                  Text(
                    contenido2,
                    style: const TextStyle(
                        // color: Colors.black,
                        fontSize: 15,
                        fontFamily: 'IndieFlower-Regular',
                        color: Colors.white),
                    textAlign: TextAlign.justify,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
