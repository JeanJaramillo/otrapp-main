import 'package:flutter/material.dart';

class Eliminarcuenta extends StatelessWidget {
  static const String routeName = '/contact';

  const Eliminarcuenta({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Elimina tu cuenta"),
        ),
        body: const Center(child: Text("This is contact page")));
  }
}
