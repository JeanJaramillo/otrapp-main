// ignore_for_file: file_names

import 'package:flutter/material.dart';

class MonitoreoSalud extends StatelessWidget {
  static const String routeName = '/contact';

  const MonitoreoSalud({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Monitorea tu Salud"),
        ),
        body: const Center(child: Text("This is contact page")));
  }
}
