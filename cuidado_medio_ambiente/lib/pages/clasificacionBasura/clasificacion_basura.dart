import 'package:cuidado_medio_ambiente/pages/clasificacionBasura/components/clasificacion_avanzada.dart';
import 'package:flutter/material.dart';

import 'components/clasificacion_basica.dart';
import 'components/clasificacion_intermedia.dart';

class ClasificacionBasura extends StatefulWidget {
  const ClasificacionBasura({super.key});

  @override
  State<ClasificacionBasura> createState() => _ClasificacionBasuraState();
}

class _ClasificacionBasuraState extends State<ClasificacionBasura>
    with SingleTickerProviderStateMixin {
  TabController? tabController;
  int index = 0;

  String imagen = 'assets/images/lvl1.jpg';
  List<String> misImagenes = [
    'assets/images/lvl1.jpg',
    'assets/images/lvl2.jpg',
    'assets/images/lvl3.jpg',
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
                indicatorColor: Colors.greenAccent,
                isScrollable: true,
                labelColor: Colors.white,
                labelStyle:
                    const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                tabs: const [
                  Tab(text: "Clasificación Basica"),
                  Tab(text: "Clasificacion Intermedia"),
                  Tab(text: "Clasificacion Avanzada"),
                ]),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: size.height,
              child: TabBarView(controller: tabController, children: const [
                ClasificacionBasica(),
                ClasificacionIntermedia(),
                ClasificacionAvanzada(),
              ]),
            ),
          )
        ],
      ),
    );
  }
}
