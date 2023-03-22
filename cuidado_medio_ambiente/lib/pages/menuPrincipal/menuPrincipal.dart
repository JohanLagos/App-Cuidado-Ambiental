import 'package:flutter/material.dart';
import 'components/bodyMenuPrincipal.dart';

class MenuPrincipal extends StatefulWidget {
  const MenuPrincipal({super.key});

  @override
  State<MenuPrincipal> createState() => _MenuPrincipalState();
}

class _MenuPrincipalState extends State<MenuPrincipal> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: BodyMenuPrincipal(),
    );
  }
}
