import 'package:flutter/material.dart';
import 'package:otrapp/screens/chart_homepage.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Monitoreo de Salud',
      theme: ThemeData(
        primaryColor: const Color(0xffff6101),
      ),
      home: const ChartHomePage(),
    );
  }
}
