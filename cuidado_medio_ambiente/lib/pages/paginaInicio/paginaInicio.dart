import 'package:flutter/material.dart';

import 'components/bodyInicio.dart';

class PaginaInicial extends StatefulWidget {
  const PaginaInicial({super.key});

  @override
  State<PaginaInicial> createState() => _PaginaInicialState();
}

class _PaginaInicialState extends State<PaginaInicial> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: BodyPaginaInicio(),
    );
  }
}
