import 'package:flutter/material.dart';

class EditaPerfil extends StatelessWidget {
  static const String routeName = '/contact';

  const EditaPerfil({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: unnecessary_new
    return new Scaffold(
        appBar: AppBar(
          title: const Text("Edita tu Perfil"),
        ),
        body: const Center(child: Text("EDITA TU PERFIL")));
  }
}
