import 'package:carousel_slider/carousel_slider.dart';
import 'package:cuidado_medio_ambiente/models/categoria_model.dart';
import 'package:flutter/material.dart';

class PaginaInformacion extends StatelessWidget {
  const PaginaInformacion({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Informacion"),
        backgroundColor: const Color.fromARGB(255, 0, 128, 55),
      ),
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/fondo11.jpg"),
                fit: BoxFit.cover)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Text(
                "CUIDADO AMBIENTAL",
                style: TextStyle(
                    color: Colors.amber,
                    fontSize: 50,
                    // fontWeight: FontWeight.bold,
                    fontFamily: 'TitanOne-Regular'),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height:
                    size.height * 0.03, // Espacio entre el tittulo y el boton
              ),
              const Image(
                image: AssetImage("assets/icons/dia-de-la-tierra.png"),
                height: 250,
              ),
              SizedBox(
                height:
                    size.height * 0.03, // Espacio entre el tittulo y el boton
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: const Text(
                  """Cuidado Ambiental es una Aplicación que tiene como objetivo ayudar a los jovenes a obtener informacion necesario para ayudar a cuidar nuestro planeta tierra.
En ella podrá encontrar informacion acerca de los TIPOS DE MATERIALES, ¿CÓMO CLASIFICAR LA BASURA?, ¿CÓMO PODEMOS AYUDAR A CUIDAR NUESTRO PLANETA? y mucho mas.\n\n
Esta aplicacion fue desarrollada por estudiantes de la Universidad de Nariño para entregar como proyecto final para la Electiva de 'Desarrollo de Aplicativos Moviles'""",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontFamily: 'IndieFlower-Regular',
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.justify,
                ),
              ),
              SizedBox(
                height:
                    size.height * 0.03, // Espacio entre el tittulo y el boton
              ),
              const Text(
                "INTEGRANTES",
                style: TextStyle(
                    color: Colors.cyan,
                    fontSize: 30,
                    // fontWeight: FontWeight.bold,
                    fontFamily: 'TitanOne-Regular'),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height:
                    size.height * 0.03, // Espacio entre el tittulo y el boton
              ),
              CarouselSlider(
                options: CarouselOptions(
                  aspectRatio: 1.5,
                  viewportFraction: 0.9,
                  enlargeCenterPage: true,
                  enlargeStrategy: CenterPageEnlargeStrategy.height,
                ),
                items: Categoria.categorias
                    .map((categoria) => EstudCarousel(categoria: categoria))
                    .toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class EstudCarousel extends StatelessWidget {
  const EstudCarousel({
    super.key,
    required this.categoria,
  });

  final Categoria categoria;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 20),
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(5.0)),
        child: Stack(
          children: <Widget>[
            Image.network(
              categoria.imagenUrl,
              fit: BoxFit.cover,
              width: 1000.0,
            ),
            Positioned(
              bottom: 0.0,
              left: 0.0,
              right: 0.0,
              child: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color.fromARGB(200, 0, 0, 0),
                      Color.fromARGB(0, 0, 0, 0)
                    ],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                  ),
                ),
                padding: const EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 20.0),
                child: Text(
                  categoria.nombre,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
