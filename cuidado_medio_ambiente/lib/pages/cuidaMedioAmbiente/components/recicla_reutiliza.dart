import 'package:cuidado_medio_ambiente/pages/cuidaMedioAmbiente/components/paginas.dart';
import 'package:flutter/material.dart';

class ReciclaReutiliza extends StatefulWidget {
  const ReciclaReutiliza({super.key});

  @override
  State<ReciclaReutiliza> createState() => _ReciclaReutilizaState();
}

class _ReciclaReutilizaState extends State<ReciclaReutiliza>
    with SingleTickerProviderStateMixin {
  TabController? tabController;
  int index = 0;

  String imagen = 'assets/images/reduce.jpg';

  List<String> misImagenes = [
    'assets/images/reduce.jpg',
    'assets/images/reutiliza.jpg',
    'assets/images/reciclar.jpg',
  ];

  void _tabListener() {
    setState(() {
      index = tabController!.index;
      imagen = misImagenes[index];
    });
  }

  @override
  void initState() {
    tabController = TabController(length: 3, vsync: this);
    tabController?.addListener(_tabListener);

    super.initState();
  }

  @override
  void dispose() {
    tabController?.removeListener(_tabListener);
    tabController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: const Color.fromARGB(255, 0, 128, 55),
            floating: true,
            pinned: true,
            expandedHeight: 350,
            flexibleSpace: FlexibleSpaceBar(
              // title: const Text("Hola Mundo"),
              background: Image(
                image: AssetImage(imagen),
                fit: BoxFit.cover,
              ),
            ),
            bottom: TabBar(
                controller: tabController,
                indicatorColor: Colors.deepOrange,
                isScrollable: true,
                labelColor: Colors.white,
                labelStyle:
                    const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                tabs: const [
                  Tab(text: "Reduce"),
                  Tab(text: "Reutiliza"),
                  Tab(text: "Recicla"),
                ]),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: size.height,
              child: TabBarView(controller: tabController, children: const [
                PaginasReduce(
                    img: "assets/icons/cuidaAmbiente/reduce.png",
                    titulo: "REDUCE",
                    contenido:
                        "Trata de reduir el consumo de los productos directos, o sea, todo aquello que se compra y se consume, ya que esto tiene una relación directa con los desperdicios, a la vez que también la tiene con nuestro bolsillo."),
                PaginasReduce(
                    img: "assets/icons/cuidaAmbiente/reutiliza.png",
                    titulo: "REUTILIZA",
                    contenido:
                        "Es decir, volver a utilizar las cosas y darles la mayor utilidad posible antes de que llegue la hora de deshacernos de ellas, dado que al disminuir el volumen de la basura. Esta tarea suele ser la que menos atención recibe y es una de las mas importantes, que también ayuda mucho la economía en casa."),
                PaginasReduce(
                    img: "assets/icons/cuidaAmbiente/reciclaje.png",
                    titulo: "RECICLA",
                    contenido:
                        " Reciclar consiste en el proceso de someter los materiales a un proceso en el cual se puedan volver a utilizar, reduciendo de forma verdaderamente significativa la utilización de nuevos materiales, y con ello, mas basura en un futuro."),
              ]),
            ),
          )
        ],
      ),
    );
  }
}
