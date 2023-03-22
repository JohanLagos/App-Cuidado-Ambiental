import 'package:flutter/material.dart';

import '../../components/barraHeader.dart';
import 'components/pagina_cuidaAmbiente.dart';
import 'components/recicla_reutiliza.dart';

class CuidaMedioAmbiente extends StatefulWidget {
  const CuidaMedioAmbiente({super.key});

  @override
  State<CuidaMedioAmbiente> createState() => _CuidaMedioAmbienteState();
}

class _CuidaMedioAmbienteState extends State<CuidaMedioAmbiente> {
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
                      builder: (context) => const ReciclaReutiliza()));
            }
            if (index == 1) {
              // 2 item
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const PaginaCuidaMedioAmbiente(
                            tituloHeader: "AHORRO DE ENERGIA",
                            img:
                                "assets/icons/cuidaAmbiente/luz-de-ahorro-de-energia.png",
                            titulo1: "Ahorro de energía",
                            contenido1:
                                "El ahorro de energía eléctrica es un elemento trascendental a la hora de optimizar el aprovechamiento de los recursos energéticos. Si conseguimos disminuir el consumo de energía, no solo ahorraremos dinero sino también ayudaremos a reducir la contaminación ambiental. También contribuiremos a reducir el calentamiento de la atmosfera. La eficiencia energética se ha convertido en la mayor fuente de energía con la que contamos actualmente, debemos se conscientes de ello y cuidarla.",
                            titulo2: "¿Qué debemos hacer para ahorrar energía?",
                            contenido2:
                                "La respuesta es simple: Únicamente debemos desconectar o apagar todos los disposivitos electrónicos que ya NO estén en uso y también aprovechar al máximo la luz solar",
                          )));
            }
            if (index == 2) {
              // 3 item
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const PaginaCuidaMedioAmbiente(
                            tituloHeader: "NO DESPERDICIEMOS\n EL AGUA",
                            img: "assets/icons/cuidaAmbiente/ahorrar-agua.png",
                            titulo1: "EL AGUA",
                            contenido1:
                                """El agua es un recurso vital para la vida en nuestro planeta. Es esencial para la supervivencia de todas las formas de vida, desde plantas y animales hasta seres humanos. El agua también es necesaria para la producción de alimentos, la generación de energía y el mantenimiento de ecosistemas saludables.
  A pesar de que el agua es esencial para la vida, muchas regiones del mundo experimentan escasez de agua debido al cambio climático, la urbanización, la contaminación y el mal manejo de los recursos hídricos. Por lo tanto, es importante tomar medidas para proteger y conservar el agua, como utilizarla de manera eficiente, evitar la contaminación y proteger las cuencas hidrográficas.""",
                            titulo2:
                                "Algunas formas en las que podemos reducir el desperdicio de agua en nuestras actividades diarias",
                            contenido2:
                                """1. Reparar fugas: las fugas de agua en tuberías, grifos y otros dispositivos pueden desperdiciar grandes cantidades de agua. Es importante reparar rápidamente cualquier fuga que detectemos.

2. Usar dispositivos eficientes: los dispositivos eficientes, como cabezales de ducha y grifos de bajo flujo, pueden ayudar a reducir el consumo de agua en el hogar.

3. Duchar en lugar de bañarse: ducharse en lugar de bañarse puede reducir el consumo de agua en el hogar.

4. No dejar correr el agua: es importante no dejar correr el agua mientras nos lavamos los dientes, nos afeitamos o lavamos platos.

5. Recoger agua de lluvia: recolectar agua de lluvia para regar plantas y jardines puede ayudar a reducir el consumo de agua del grifo.

6. Reutilizar el agua: el agua utilizada para lavar ropa o platos puede reutilizarse para regar plantas y jardines.

7. Utilizar la lavadora y lavavajillas de manera eficiente: es importante utilizar la lavadora y el lavavajillas solo cuando estén llenos para reducir el número de ciclos de lavado.

8. Utilizar plantas y césped nativos: plantar plantas y césped nativos que requieren menos agua puede ayudar a reducir el consumo de agua al aire libre.

9. Tomar medidas de conservación en la piscina: reducir la evaporación en la piscina mediante cubiertas o reducción de los tiempos de filtrado puede ahorrar grandes cantidades de agua.

Reducir el desperdicio de agua puede ayudar a ahorrar recursos naturales y a proteger el medio ambiente. Al tomar medidas para reducir nuestro consumo de agua, podemos asegurarnos de que este recurso valioso esté disponible para las generaciones futuras.""",
                          )));
            }
            if (index == 3) {
              // 4 item
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const PaginaCuidaMedioAmbiente(
                            tituloHeader: "SEMBRAR ÁRBOLES",
                            img: "assets/icons/cuidaAmbiente/irrigacion.png",
                            titulo1: "Sembrar árboles",
                            contenido1:
                                "¿Sabías que plantar un árbol es una de las cosas más fáciles y poderosas que puedes hacer para tener un impacto positivo en el medio ambiente? Los árboles limpian el aire, te ayudan a ahorrar energía, evitan la escorrentía del agua de lluvia e incluso combaten el calentamiento global.",
                            titulo2:
                                "Además, existen buenas razones para plantar árboles que son:",
                            contenido2:
                                "1. Los árboles limpian el aire y te ayudan a respirar\n2. Plantar un árbol es fácil\n3. Los árboles luchan contra el cambio climático\n4. Los árboles son buenos para la salud mental y física\n5. Nos proporcionan medicinas\n6. Fijan los nutrientes a la tierra\n7. Dan refugio para el hombre y para los animales",
                          )));
            }
            if (index == 4) {
              // 5 item
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const PaginaCuidaMedioAmbiente(
                          tituloHeader: "EVITA EL USO\n DE PLASTICOS",
                          img: "assets/icons/cuidaAmbiente/plastico.png",
                          titulo1: "DI NO A LAS BOLSAS DE PLASTICO",
                          contenido1:
                              """Las bolsas de plástico son uno de los principales contaminantes del medio ambiente. Debido a su alta durabilidad y a que no se degradan fácilmente, las bolsas de plástico pueden tardar cientos de años en descomponerse.\nAdemás, muchas bolsas de plástico terminan en los océanos y cuerpos de agua, dañando la vida marina y los ecosistemas acuáticos.\n\nApuesta por las bolsas ecológicas ya que al contrario que las plásticas necesitarás muy pocas a lo largo del año. Las bolsas de plástico son el producto estrella de nuestra cultura de usar y tirar, que mal gastaga grandes cantidades de materiales y energía para fabricar productos efímeros de un solo uso.""",
                          titulo2:
                              "Para reducir el impacto ambiental de las bolsas de plástico, se pueden tomar varias medidas, como:",
                          contenido2:
                              """1. Usar bolsas reutilizables: en lugar de utilizar bolsas de plástico desechables, se pueden utilizar bolsas reutilizables de tela, papel, malla u otros materiales duraderos.\n
2. Reciclar bolsas de plástico: si se utiliza una bolsa de plástico, es importante asegurarse de que se recicle adecuadamente. Muchos supermercados tienen programas de reciclaje de bolsas de plástico.\n
3. Reducir el consumo de bolsas de plástico: se pueden llevar bolsas reutilizables cuando se va de compras, rechazar las bolsas de plástico innecesarias y utilizar otros medios de transporte para llevar productos, como carros o cajas.
                              
Al tomar estas medidas, se puede reducir significativamente la cantidad de bolsas de plástico que terminan en los vertederos y en los océanos, y ayudar a proteger el medio ambiente.""")));
            }
            if (index == 5) {
              // 6 item
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const PaginaCuidaMedioAmbiente(
                            tituloHeader:
                                "EVITAR VEHÍCULOS QUE\n MAS CONTAMINAN",
                            img: "assets/icons/cuidaAmbiente/contaminacion.png",
                            titulo1:
                                "EVITA LOS MEDIOS DE TRANSPORTE QUE MAS CONTAMINAN",
                            contenido1:
                                """Los medios de transporte que más contaminan el medio ambiente son los que utilizan combustibles fósiles, como la gasolina o el diésel, ya que emiten grandes cantidades de gases de efecto invernadero y otros contaminantes.""",
                            titulo2:
                                "Algunos de los medios de transporte más contaminantes son:",
                            contenido2:
                                """1. Automóviles: los vehículos de motor son una de las principales fuentes de contaminación del aire. Emiten grandes cantidades de dióxido de carbono (CO2), óxidos de nitrógeno (NOx), partículas finas y otros contaminantes. Además, el tráfico urbano y los atascos de tráfico contribuyen al aumento de la contaminación del aire en las ciudades.

2. Camiones y autobuses: los vehículos de transporte de carga y pasajeros también emiten grandes cantidades de gases de efecto invernadero y otros contaminantes. Debido a su tamaño y uso intensivo, su impacto ambiental es mayor que el de los automóviles.

3. Aviones: los aviones son una fuente importante de emisiones de gases de efecto invernadero, especialmente en vuelos de larga distancia. Además, las emisiones de los aviones se liberan a gran altitud, lo que aumenta su impacto en el medio ambiente.

4. Barcos: los barcos emiten grandes cantidades de dióxido de azufre (SO2), óxidos de nitrógeno (NOx), partículas finas y otros contaminantes. Además, los derrames de petróleo y otros contaminantes pueden tener un impacto devastador en los ecosistemas marinos.

Es importante tomar medidas para reducir el impacto ambiental de estos medios de transporte, como utilizar alternativas más limpias y eficientes, como el transporte público, la bicicleta, o el coche eléctrico o híbrido. También se puede reducir el impacto ambiental mediante la implementación de tecnologías más limpias, como los filtros de partículas y los motores más eficientes en términos de combustible.""",
                          )));
            }
            if (index == 6) {
              // 7 item
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const PaginaCuidaMedioAmbiente(
                            tituloHeader: "RECICLA Y DONA\n TU ROPA USADA",
                            img: "assets/icons/cuidaAmbiente/caja.png",
                            titulo1:
                                "RAZONES POR LAS QUE ES IMPORTANTE RECICLAR Y DONAR ROPA USADA",
                            contenido1:
                                """1. Reducción de desechos: la industria de la moda es una de las industrias más contaminantes del mundo. Al reciclar y donar ropa usada, se reduce la cantidad de ropa que se tira y se envía a los vertederos, lo que reduce la cantidad de residuos que generamos.

2. Ahorro de recursos: la producción de ropa nueva requiere grandes cantidades de recursos naturales, como el agua y la energía. Al reciclar y donar ropa usada, se reduce la necesidad de producir ropa nueva y se ahorran recursos naturales.

3. Beneficios sociales: la ropa usada en buen estado puede ser donada a organizaciones benéficas y a personas necesitadas. Esto ayuda a proporcionar ropa a personas que de otra manera no podrían comprarla y ayuda a apoyar a las organizaciones benéficas que trabajan para ayudar a las personas necesitadas.""",
                            titulo2: "MANERAS DE RECICLAR Y DONAR ROPA USADA",
                            contenido2:
                                """1. Donar la ropa a organizaciones benéficas: muchas organizaciones benéficas aceptan donaciones de ropa usada, como Goodwill o Salvation Army. La ropa se vende en tiendas de segunda mano y los ingresos se utilizan para apoyar programas y servicios comunitarios.

2. Vender la ropa en tiendas de segunda mano: algunas tiendas de segunda mano compran ropa usada en buen estado para revenderla. Esto puede proporcionar una forma de ganar dinero extra y reducir el desperdicio de ropa.

3. Intercambiar ropa con amigos y familiares: una forma divertida y económica de reciclar ropa es organizar un intercambio de ropa con amigos y familiares. Cada persona puede traer ropa que ya no usa y cambiarla por ropa que les guste.

Reciclar y donar ropa usada es una forma fácil y efectiva de reducir nuestro impacto ambiental y ayudar a otras personas al mismo tiempo.""",
                          )));
            }
            if (index == 7) {
              // 8 item
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const PaginaCuidaMedioAmbiente(
                            tituloHeader: "SEPARAR RESIDUOS\n PELIGROSOS",
                            img: "assets/icons/cuidaAmbiente/reciclar.png",
                            titulo1: "RESIDUOS PELIGROSOS",
                            contenido1:
                                """Los residuos peligrosos son materiales que presentan un riesgo para la salud humana o el medio ambiente si no se manejan adecuadamente. Estos residuos pueden ser inflamables, tóxicos, corrosivos, explosivos o radiactivos, y pueden provenir de actividades industriales, comerciales o domésticas.

Algunos ejemplos comunes de residuos peligrosos incluyen:

1. Baterías: las baterías de plomo-ácido, níquel-cadmio y otras baterías pueden contener sustancias químicas tóxicas, como plomo, cadmio y ácido sulfúrico.

2. Productos químicos: muchos productos químicos, como ácidos, bases, disolventes, pesticidas y herbicidas, pueden ser peligrosos si no se manejan adecuadamente.

3. Pinturas y disolventes: las pinturas y los disolventes pueden contener sustancias químicas peligrosas, como plomo, mercurio y disolventes orgánicos volátiles (COV).

4. Medicamentos vencidos: los medicamentos vencidos pueden contener ingredientes activos que pueden ser peligrosos si se ingieren o se inhalan.

5. Bombillas fluorescentes: las bombillas fluorescentes contienen pequeñas cantidades de mercurio, que pueden ser tóxicas si se inhalan.

6. Aceites usados: los aceites usados de motores, transmisiones y otros equipos pueden contener sustancias químicas peligrosas, como metales pesados y hidrocarburos.

7. Equipos electrónicos: los equipos electrónicos, como computadoras, teléfonos móviles y televisores, pueden contener metales pesados y otros materiales peligrosos que pueden contaminar el medio ambiente si no se eliminan adecuadamente.""",
                            titulo2:
                                "PASOS QUE SE PUEDEN SEGIUR PARA SERPAR LOS RESIDUOS PELIGROSOS",
                            contenido2:
                                """1. Identificar los residuos peligrosos: lo primero es identificar los residuos peligrosos en su hogar o lugar de trabajo. Algunos ejemplos de residuos peligrosos incluyen baterías, productos químicos, pinturas, medicamentos vencidos, bombillas fluorescentes, aceites usados y equipos electrónicos.

2. Almacenar los residuos peligrosos: una vez identificados, los residuos peligrosos deben almacenarse en contenedores especiales y etiquetados claramente para su identificación. Los contenedores deben estar cerrados herméticamente y almacenarse en un lugar seguro y fresco, lejos del alcance de los niños y las mascotas.

3. No mezclar los residuos peligrosos: es importante no mezclar diferentes tipos de residuos peligrosos. Cada tipo de residuo peligroso debe ser almacenado por separado para evitar reacciones químicas peligrosas.

4. Disponer de los residuos peligrosos adecuadamente: los residuos peligrosos deben ser llevados a un centro de recolección de residuos peligrosos autorizado por las autoridades locales. Estos centros garantizan que los residuos peligrosos sean eliminados de manera segura y responsable, evitando que contaminen el medio ambiente y pongan en riesgo la salud humana.""",
                          )));
            }
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
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
      // backgroundColor: Colors.green,
      // backgroundColor: const Color.fromARGB(255, 70, 69, 69),
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/fondo6.jpg"),
                fit: BoxFit.cover)),
        padding: const EdgeInsets.symmetric(vertical: 30),
        child: Column(
          children: [
            const BarraHeader(
              imagen: "assets/icons/hdOpcion.png",
              titulo: "¿CÓMO CUIDAR EL\n MEDIO AMBIENTE?",
              color: Colors.black,
            ),
            SizedBox(
              height: size.height * 0.07, // Espacio entre la barra y el titulo
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: const Text(
                "¡Nuestra tierra está en peligro, debemos salvarla!",
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'TitanOne-Regular',
                    fontSize: 30),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: size.height * 0.05, // Espacio entre el eñ titulo y texto
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: const Text(
                "Existen varias maneras sencillas para proteger nuestro medio ambiente.",
                style: TextStyle(
                    fontFamily: 'IndieFlower-Regular',
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.left,
              ),
            ),
            SizedBox(
              height: size.height * 0.05, // Espacio entre el texto y menu
            ),
            Expanded(
                child: GridView.count(
              crossAxisCount: 2,
              padding: const EdgeInsets.all(30),
              children: [
                itemMenuDashboard("Reduce - Reutiliza - Recicla",
                    "assets/icons/cuidaAmbiente/lata-de-reciclaje.png", 0),
                itemMenuDashboard(
                    "Ahorro de Energía",
                    "assets/icons/cuidaAmbiente/luz-de-ahorro-de-energia.png",
                    1),
                itemMenuDashboard("NO desperdiciar el agua",
                    "assets/icons/cuidaAmbiente/ahorrar-agua.png", 2),
                itemMenuDashboard("Sembrar Árboles",
                    "assets/icons/cuidaAmbiente/irrigacion.png", 3),
                itemMenuDashboard("Evitar el uso de plastico",
                    "assets/icons/cuidaAmbiente/plastico.png", 4),
                itemMenuDashboard("Evitar Vehiculos que mas contaminan",
                    "assets/icons/cuidaAmbiente/contaminacion.png", 5),
                itemMenuDashboard("Dona objetos que NO utilices",
                    "assets/icons/cuidaAmbiente/caja.png", 6),
                itemMenuDashboard("Separar residuos peligrosos",
                    "assets/icons/cuidaAmbiente/reciclar.png", 7),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
