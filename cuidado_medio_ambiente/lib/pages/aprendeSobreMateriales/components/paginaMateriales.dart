import 'package:cuidado_medio_ambiente/components/botonRedondeado.dart';
import 'package:flutter/material.dart';

import '../../../components/barraHeader.dart';

class PaginaMateriales extends StatelessWidget {
  final String img;
  final String tituloHeader;
  final String titulo;
  final String recicla;
  final String contenido;

  const PaginaMateriales(
      {super.key,
      required this.img,
      required this.tituloHeader,
      required this.titulo,
      required this.recicla,
      required this.contenido});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      // backgroundColor: Colors.green,
      // backgroundColor: const Color.fromARGB(255, 70, 69, 69),
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
                height:
                    size.height * 0.06, // Espacio entre la imagen y el titulo
              ),
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
                      style: const TextStyle(
                          color: Colors.cyan,
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
                  BotonRedondeado(texto: recicla, press: () {}),
                  SizedBox(
                    height: size.height *
                        0.02, // Espacio entre el boton y el contenido
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Text(
                      contenido,
                      style: const TextStyle(
                          color: Colors.white,
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
