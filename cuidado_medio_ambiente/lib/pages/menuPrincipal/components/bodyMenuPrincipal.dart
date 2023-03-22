import 'package:flutter/material.dart';

import '../../../components/barraHeader.dart';
import '../../../components/botonPlano.dart';
import '../../aprendeSobreMateriales/aprendeSobreMateriales.dart';
import '../../clasificacionBasura/clasificacion_basura.dart';
import '../../cuidaMedioAmbiente/cuida_ambiente.dart';

class BodyMenuPrincipal extends StatelessWidget {
  const BodyMenuPrincipal({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/fondo8.jpg"),
              fit: BoxFit.cover)),
      padding: const EdgeInsets.symmetric(vertical: 30),
      child: Column(
        children: [
          const BarraHeader(
            imagen: "assets/icons/hdMenu.png",
            titulo: "¡CUIDEMOS NUESTRO\nPLANETA TIERRA JUNTOS!",
            color: Colors.white,
          ),
          SizedBox(
            height: size.height * 0.05, // Espacio entre el Header y la imagen
          ),
          Center(
            child: Column(
              children: [
                const Text(
                  "MENU PRINCIPAL",
                  style: TextStyle(
                      fontSize: 70,
                      fontFamily: 'TitanOne-Regular',
                      color: Colors.black),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height:
                      size.height * 0.05, // Espacio entre el Header y la imagen
                ),
                BotonPlano(
                  texto:
                      "APRENDE SOBRE MATERIALES\n Origen, flujo e informacion relevante",
                  press: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const AprendeSobreMateriales()),
                    );
                  },
                ),
                BotonPlano(
                  texto:
                      "CLASIFICACION DE BASURA\n ¿Cómo clasificar basura en tu casa?",
                  press: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ClasificacionBasura()),
                    );
                  },
                ),
                BotonPlano(
                  texto:
                      "CUIDA EL MEDIO AMBIENTE\n ¿Cómo podemos cuidar nuestro planeta?",
                  press: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const CuidaMedioAmbiente()));
                  },
                ),
                BotonPlano(
                  texto:
                      "CALCULADORA DE HUELLA DE CARBONO\n ¿Como estoy ayudando a cuidar el planeta?",
                  press: () {},
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
