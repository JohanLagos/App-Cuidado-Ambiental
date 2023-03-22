import 'package:flutter/material.dart';

import '../../components/barraHeader.dart';
import 'components/paginaMateriales.dart';

class AprendeSobreMateriales extends StatefulWidget {
  const AprendeSobreMateriales({super.key});

  @override
  State<AprendeSobreMateriales> createState() => _AprendeSobreMaterialesState();
}

class _AprendeSobreMaterialesState extends State<AprendeSobreMateriales> {
  Card itemMenuDashboard(String titulo, String img, int index) {
    return Card(
      elevation: 2,
      margin: const EdgeInsets.all(8),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            gradient: const LinearGradient(
              begin: FractionalOffset(0.0, 0.0),
              end: FractionalOffset(3.0, -1.0),
              colors: [Color.fromARGB(255, 0, 128, 55), Color(0xFFFFFFFF)],
            ),
            boxShadow: const [
              BoxShadow(
                  color: Colors.black, blurRadius: 8, offset: Offset(2, 2))
            ]),
        child: InkWell(
          onTap: () {
            if (index == 0) {
              // 1 item
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const PaginaMateriales(
                          img:
                              "assets/icons/aprendeMateriales/sin-plastico.png",
                          titulo: "Plasticos",
                          tituloHeader: "¿QUÉ ES EL PLASTICO?",
                          recicla: "Reciclable / No Reciclable",
                          contenido:
                              "El plástico es un material que puede ser reciclado o no reciclado. Cuando decimos que algo es reciclable, significa que se puede transformar en algo nuevo para ser utilizado de nuevo. Pero, no todos los plásticos son iguales, algunos son más difíciles de reciclar que otros. Por eso, es importante saber qué tipo de plástico estamos usando y cómo podemos reciclarlo correctamente para ayudar al medio ambiente.")));
            }
            if (index == 1) {
              // 2 item
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const PaginaMateriales(
                          img:
                              "assets/icons/aprendeMateriales/caja-del-paquete.png",
                          titulo: "Papel y Carton",
                          tituloHeader: "¿QUÉ ES EL\n PAPEL Y EL CARTON?",
                          recicla: "Reciclable",
                          contenido:
                              "El papel y el cartón son materiales que se pueden reciclar, lo que significa que podemos volver a usarlos para hacer nuevos productos como papel de nuevo o cartón. Por lo tanto, es importante separar el papel y el cartón de otros residuos y depositarlos en el contenedor adecuado para que puedan ser reciclados. Además, reciclar papel y cartón ayuda a ahorrar árboles y a reducir la cantidad de basura que se envía a los vertederos.")));
            }
            if (index == 2) {
              // 3 item
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const PaginaMateriales(
                          img:
                              "assets/icons/aprendeMateriales/rock-and-roll.png",
                          titulo: "Metales",
                          tituloHeader: "¿QUÉ SON LOS METALES?",
                          recicla: "Reciclable",
                          contenido:
                              "El metal es reciclable. Esto significa que se puede tomar el metal usado y hacer cosas nuevas con él en lugar de simplemente tirarlo a la basura. Cuando reciclamos metal, estamos ayudando a ahorrar energía y recursos naturales, ya que se necesita mucha menos energía para producir metal reciclado que para producir metal nuevo. Además, el metal no es considerado como un residuo peligroso, por lo que no requiere un manejo especial en comparación con otros tipos de residuos.")));
            }
            if (index == 3) {
              // 4 item
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const PaginaMateriales(
                          img: "assets/icons/aprendeMateriales/vidrio-roto.png",
                          titulo: "Vidrios",
                          tituloHeader: "¿QUÉ ES EL VIDRIO?",
                          recicla: "Reciclable",
                          contenido:
                              "El vidrio es reciclable. Esto significa que puede ser recogido, procesado y reutilizado para hacer nuevos productos. Al reciclar vidrio, podemos ahorrar energía y recursos naturales y reducir la cantidad de desechos en vertederos. Es importante separar el vidrio de otros materiales para asegurarse de que pueda ser reciclado de manera efectiva. Además, el vidrio no es un residuo peligroso y no debe ser mezclado con otros tipos de desechos peligrosos.")));
            }
            if (index == 4) {
              // 5 item
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const PaginaMateriales(
                          img: "assets/icons/aprendeMateriales/hacha.png",
                          titulo: "Maderas",
                          tituloHeader: "¿QUÉ ES LA MADERA?",
                          recicla: "Reciclable / Residuo Compostable",
                          contenido:
                              "La madera es reciclable y residuo compostable. Esto significa que se puede reutilizar o reciclar la madera para crear nuevos productos, y también puede descomponerse naturalmente y convertirse en abono para las plantas en lugar de convertirse en basura. Es importante tener en cuenta que la madera tratada con químicos puede ser un residuo peligroso y debe ser manejada y eliminada adecuadamente.")));
            }
            if (index == 5) {
              // 6 item
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const PaginaMateriales(
                          img: "assets/icons/aprendeMateriales/hilo.png",
                          titulo: "Textiles",
                          tituloHeader: "¿QUÉ SON LOS TEXTILES?",
                          recicla: "Reciclable / No Reciclable",
                          contenido:
                              "Los textiles pueden ser reciclados en algunos casos, pero no todos los tipos de textiles son reciclables. Por ejemplo, la ropa vieja y los tejidos desechados pueden ser reciclados para crear nuevos productos, como ropa nueva o productos de limpieza. Sin embargo, algunos textiles como la ropa interior, los calcetines y las medias no son reciclables y deben ser desechados como residuos no reciclables. En general, los textiles no son residuos peligrosos, pero algunos productos químicos utilizados en la fabricación de textiles pueden ser perjudiciales para el medio ambiente si no se manejan adecuadamente.")));
            }
            if (index == 6) {
              // 7 item
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const PaginaMateriales(
                          img: "assets/icons/aprendeMateriales/quimica.png",
                          titulo: "Productos Químicos",
                          tituloHeader: "¿QUÉ ES SON LOS \nPRODUCTOS QUÍMICOS?",
                          recicla: "Residuo Peligroso",
                          contenido:
                              "Los productos químicos son generalmente considerados como residuos peligrosos, ya que muchos de ellos pueden ser tóxicos para los seres humanos y el medio ambiente si no se manejan adecuadamente. Por lo tanto, es importante desechar correctamente los productos químicos y no mezclar diferentes tipos de productos químicos entre sí, ya que esto puede causar reacciones peligrosas.")));
            }
            if (index == 7) {
              // 8 item
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const PaginaMateriales(
                          img:
                              "assets/icons/aprendeMateriales/dispositivos.png",
                          titulo: "Productos Electrónicos",
                          tituloHeader: "¿QUÉ ES UN PRODUCTO\n  ELECTRÓNICO?",
                          recicla: "Residuo Peligroso",
                          contenido:
                              "Los productos electrónicos pueden contener materiales valiosos como metales, pero también pueden contener sustancias peligrosas como plomo, mercurio y cadmio. Por lo tanto, los productos electrónicos son considerados residuos peligrosos y deben ser tratados y reciclados adecuadamente para evitar daños al medio ambiente y la salud humana.")));
            }
            if (index == 8) {
              // 9 item
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const PaginaMateriales(
                          img:
                              "assets/icons/aprendeMateriales/biodegradable.png",
                          titulo: "Materiales Biodegradables",
                          tituloHeader: "¿QUÉ ES UN MATERIAL\n  BIODEGRADABLE?",
                          recicla: "Residuo Compostable",
                          contenido:
                              "Los materiales biodegradables son aquellos que pueden descomponerse en pequeños pedazos y convertirse en tierra de forma natural, sin causar daño al medio ambiente. Como los materiales biodegradables se convierten en tierra, se pueden usar para hacer compost, que es un fertilizante natural para las plantas. Por lo tanto, los materiales biodegradables son considerados residuos compostables y son buenos para el medio ambiente. ¡Recuerda siempre separar los residuos para que puedan ser reciclados o compostados adecuadamente!")));
            }
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            verticalDirection: VerticalDirection.down,
            children: [
              const Padding(padding: EdgeInsets.all(5)),
              // const SizedBox(height: 50),
              Center(
                child: Image.asset(
                  img,
                  height: 80,
                  width: 80,
                ),
              ),
              const SizedBox(height: 15),
              Center(
                child: Text(
                  titulo,
                  style: const TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      // backgroundColor: Colors.indigo,
      // backgroundColor: const Color.fromARGB(255, 70, 69, 69),
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/fondo4.jpg"),
                fit: BoxFit.cover)),
        padding: const EdgeInsets.symmetric(vertical: 30),
        child: Column(
          children: [
            const BarraHeader(
              imagen: "assets/icons/hdOpcion.png",
              titulo: "¡APRENDAMOS \nSOBRE LOS MATERIALES!",
              color: Colors.black,
            ),
            SizedBox(
              height: size.height * 0.06, // Espacio entre el Header y la imagen
            ),
            Expanded(
                child: GridView.count(
              crossAxisCount: 2,
              padding: const EdgeInsets.all(30),
              children: [
                itemMenuDashboard("Plasticos",
                    "assets/icons/aprendeMateriales/sin-plastico.png", 0),
                itemMenuDashboard("Papel y Carton",
                    "assets/icons/aprendeMateriales/caja-del-paquete.png", 1),
                itemMenuDashboard("Metales",
                    "assets/icons/aprendeMateriales/rock-and-roll.png", 2),
                itemMenuDashboard("Vidrios",
                    "assets/icons/aprendeMateriales/vidrio-roto.png", 3),
                itemMenuDashboard(
                    "Madera", "assets/icons/aprendeMateriales/hacha.png", 4),
                itemMenuDashboard(
                    "Textiles", "assets/icons/aprendeMateriales/hilo.png", 5),
                itemMenuDashboard("Productos Quimicos",
                    "assets/icons/aprendeMateriales/quimica.png", 6),
                itemMenuDashboard("Productos Electronicos",
                    "assets/icons/aprendeMateriales/dispositivos.png", 7),
                itemMenuDashboard("Materiales Biodegradables",
                    "assets/icons/aprendeMateriales/biodegradable.png", 8),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
