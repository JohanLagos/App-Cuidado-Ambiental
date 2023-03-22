import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../../components/botonRedondeado.dart';
import '../../informacion/informacion.dart';
import '../../loginFirebase/paginaLogin.dart';
import '../../menuPrincipal/menuPrincipal.dart';

class BodyPaginaInicio extends StatelessWidget {
  const BodyPaginaInicio({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/fondo5.jpg"), fit: BoxFit.cover),
      ),
      padding: const EdgeInsets.all(10),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // const Image(
            //   image: AssetImage("assets/icons/iconInicio.png"),
            //   height: 250,
            // ),
            // SizedBox(
            //   height:
            //       size.height * 0.03, // Espacio entre el icono y las opciones
            // ),
            BotonRedondeado(
              texto: "MENU PRINCIPAL",
              colorFondo: Colors.white,
              colorTexto: Colors.black,
              press: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MenuPrincipal()));
              },
            ),
            BotonRedondeado(
              texto: "INFORMACIÓN",
              colorFondo: Colors.white,
              colorTexto: Colors.black,
              press: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const PaginaInformacion()));
              },
            ),
            BotonRedondeado(
              texto: "SALIR",
              colorFondo: Colors.white,
              colorTexto: Colors.black,
              press: () {
                FirebaseAuth.instance.signOut();

                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const PaginaLogin()),
                    (route) => false);
              },
            ),
          ],
        ),
      ),
    );
  }
}
