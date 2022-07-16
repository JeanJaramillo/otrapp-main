import 'package:flutter/material.dart';
import 'package:multilevel_drawer/multilevel_drawer.dart';
import 'package:otrapp/screens/eventos.dart';
import 'package:otrapp/screens/crearEvento.dart';
import 'package:otrapp/screens/calculadora_IMC.dart';
import 'package:otrapp/screens/register_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: MultiLevelDrawer(
          backgroundColor: Colors.white,
          rippleColor: Colors.white,
          subMenuBackgroundColor: Colors.grey.shade100,
          header: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const <Widget>[],
          )),
          children: [
            MLMenuItem(
              leading: const Icon(Icons.emoji_events,
                  color: Color.fromARGB(255, 90, 233, 94)),
              content: const Text("Eventos"),
              onClick: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => const Home()));
              },
            ),
            MLMenuItem(
              leading: const Icon(Icons.emoji_events, color: Colors.green),
              content: const Text("Crear eventos"),
              onClick: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => CrearEvento()));
              },
            ),
            MLMenuItem(
                leading: const Icon(Icons.assessment_sharp, color: Colors.pink),
                content: const Text(
                  "Monitoreo de salud",
                ),
                onClick: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) => const HomeScreen()));
                }),
            MLMenuItem(
                leading: const Icon(Icons.payment, color: Colors.cyan),
                content: const Text(
                  "Cerrar Sesiòn",
                ),
                onClick: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) =>
                          const RegisterScreen()));
                }),
          ],
        ),
        appBar: AppBar(
          backgroundColor: Colors.white,
          iconTheme: const IconThemeData(color: Colors.black),
          title: const Text(
            "CALCULADORA IMC",
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: MyCalculatorApp());
  }
} //clases
