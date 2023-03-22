import 'package:flutter/material.dart';
import 'package:getwidget/components/accordion/gf_accordion.dart';

class ClasificacionBasica extends StatefulWidget {
  const ClasificacionBasica({super.key});

  @override
  State<ClasificacionBasica> createState() => _ClasificacionBasicaState();
}

class _ClasificacionBasicaState extends State<ClasificacionBasica> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      // backgroundColor: const Color.fromARGB(255, 255, 172, 172),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const Text(
                "¿CÓMO CLASIFICAR EN CASA?",
                style: TextStyle(
                    fontFamily: 'TitanOne-Regular',
                    fontSize: 30,
                    color: Colors.green),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height:
                    size.height * 0.04, // Espacio entre la imagen y el titulo
              ),
              const Text(
                "Se proponen 3 niveles para que clasifiques tus residuos en casa en funcion del compromiso que puedas asumir y las soluciones que tengas a tu alcance. Esta clasificacion se basa en la Resolucion No. 2184 de 2019, La cual entra en vigencia a partir de enero de 2021.",
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: "IndieFlower-Regular",
                  // color: Colors.white,
                ),
                textAlign: TextAlign.justify,
              ),
              SizedBox(
                height:
                    size.height * 0.04, // Espacio entre la imagen y el titulo
              ),
              SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: [
                    GFAccordion(
                      expandedIcon: const Icon(Icons.minimize),
                      // title: "CONTENEDOR BLANCO: Reciclables",
                      titleChild: const Text(
                        "CONTENEDOR BLANCO\n\n Reciclables",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            // color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      // content: "Una lista",
                      contentChild: const Text(
                        "Una Lista",
                        style: TextStyle(fontSize: 15),
                      ),
                      contentBackgroundColor: Colors.white,
                      // contentBorderRadius: BorderRadius.circular(20),
                      contentBorder: Border.all(style: BorderStyle.solid),
                      // titleBorderRadius: BorderRadius.circular(5),
                      titleBorder: Border.all(
                          color: Colors.black,
                          width: 2,
                          style: BorderStyle.solid),
                      collapsedTitleBackgroundColor: Colors.white,
                      expandedTitleBackgroundColor: Colors.white,
                    ),
                    GFAccordion(
                      expandedIcon: const Icon(
                        Icons.minimize,
                        color: Colors.white,
                      ),
                      collapsedIcon: const Icon(
                        Icons.keyboard_arrow_down,
                        color: Colors.white,
                      ),
                      // title: "CONTENEDOR NEGRO\n No Reciclables",
                      titleChild: const Text(
                        "CONTENEDOR NEGRO\n\n No Reciclables",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      // textStyle: const TextStyle(
                      //     color: Colors.white,
                      //     fontWeight: FontWeight.bold,
                      //     fontSize: 20),
                      // titlePadding: EdgeInsets.symmetric(vertical: 20),
                      contentChild: const Text(
                        "Una lista",
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                      contentBackgroundColor: Colors.black,
                      // titleBorderRadius: BorderRadius.circular(20),
                      titleBorder: Border.all(
                          color: Colors.black,
                          width: 2,
                          style: BorderStyle.solid),
                      collapsedTitleBackgroundColor: Colors.black,
                      expandedTitleBackgroundColor: Colors.black,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
