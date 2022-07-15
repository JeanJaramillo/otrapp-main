// ignore_for_file: unnecessary_new, use_key_in_widget_constructors, file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:math';

import 'package:decimal/decimal.dart';
import 'package:flutter/material.dart';

void main() => runApp(new MyCalculatorApp());

class MyCalculatorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculadora IMC', //indice de masa corporal
      home: MyCalculator(),
    );
  }
}

class MyCalculator extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => Calculadora();
}

class Calculadora extends State<MyCalculator> {
  // ignore: non_constant_identifier_names
  final controller_peso = TextEditingController();
  // ignore: non_constant_identifier_names
  final controller_talla = TextEditingController();
  // ignore: non_constant_identifier_names
  final my_form_key = GlobalKey<FormState>();
  final d = Decimal;

  String muestreImc = "";
  String pesoSugerido = "";

  //creamos la clase para calcular peso mujer
  // ignore: non_constant_identifier_names
  void PesoIdealMujer() {
    int pesoidealm = 21;
    int decimals = 2; //solo me muestre dos decimales
    num fad = pow(10, decimals); //formula mayor a 10 decimales

    //realizamos las validaciones si algun campo este vacio
    if (my_form_key.currentState!.validate()) {
      double peso = double.parse(controller_peso.text);
      double altura = double.parse(controller_talla.text);
      double rtaAltura = (altura) / 100;
      double alturapordos = rtaAltura * rtaAltura;
      double result = peso / alturapordos;

      double d = result;
      d = (d * fad).round() / fad;

      //formula para sugerir el peso de la persona
      double sugerido = (pesoidealm * peso) / d;
      sugerido = (sugerido * fad).round() / fad;

      setState(() {
        muestreImc = "IMC es: $d";
      });

      setState(() {
        pesoSugerido = "Peso ideal es: $sugerido Kg";
      });
    }
  }

  //formula para el hombre
  // ignore: non_constant_identifier_names
  void PesoIdealHombre() {
    int pesoidealh = 24;
    int decimals = 2; //solo me muestre dos decimales
    num fad = pow(10, decimals); //formula mayor a 10 decimales

    //realizamos las validaciones si algun campo este vacio
    if (my_form_key.currentState!.validate()) {
      double peso = double.parse(controller_peso.text);
      double altura = double.parse(controller_talla.text);
      double rtaAltura = (altura) / 100;
      double alturapordos = rtaAltura * rtaAltura;
      double result = peso / alturapordos;

      double d = result;
      d = (d * fad).round() / fad;

      //formula para sugerir el peso de la persona
      double sugerido = (pesoidealh * peso) / d;
      sugerido = (sugerido * fad).round() / fad;

      setState(() {
        muestreImc = "IMC es: $d";
      });

      setState(() {
        pesoSugerido = "Peso ideal es: $sugerido Kg";
      });
    }
  }

  //Formula para hacer una operacion arimetica
  //lo que esten perdidos con la formula vamos a crear una mas simple
  // ignore: non_constant_identifier_names
  void OperacionMatematica() {
    //realizamos las validaciones si algun campo este vacio
    if (my_form_key.currentState!.validate()) {
      double numero1 = double.parse(controller_peso.text);
      double numero2 = double.parse(controller_talla.text);

      double result = numero1 / numero2;
      //lo puede cambiar por +  o  - o *

      setState(() {
        muestreImc = "La division es: $result";
      });
    }
  }

//ahora realizaremos el layout o diseño de nuestra calculadora
//de indice de masa corporal
  @override
  Widget build(BuildContext context) {
    final logicalSize = MediaQuery.of(context).size;
    // ignore: unused_local_variable
    final double _height = logicalSize.height;
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        title: const Text('Calculadora IMC'),
        // ignore: use_full_hex_values_for_flutter_colors
        backgroundColor: Color(0xFFf01DFD7),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {},
        ),
      ),
      body: Form(
          key: my_form_key,
          child: SingleChildScrollView(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: <Widget>[
                  Container(
                    width: 500,
                    height: 130,
                    decoration: BoxDecoration(
                      // ignore: use_full_hex_values_for_flutter_colors
                      color: Color(0xFFf01DFD7),
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(80),
                          bottomLeft: Radius.circular(80)),
                    ),
                    child: Stack(
                      children: <Widget>[
                        Align(
                          alignment: Alignment.center,
                          child: new Image(
                            width: 200.0,
                            height: 150.0,
                            image: new AssetImage('assets/scale.png'),
                          ),
                        )
                      ],
                    ),
                  ),

                  //agregamos un Container
                  Container(
                    padding: EdgeInsets.only(top: 40),
                    child: Column(
                      children: <Widget>[
                        Container(
                          width: 115,
                          height: 50,
                          padding: EdgeInsets.all(7),
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50)),
                              color: Colors.white,
                              boxShadow: const [
                                BoxShadow(color: Colors.black, blurRadius: 5)
                              ]),
                          child: TextFormField(
                            controller: controller_peso,
                            // ignore: body_might_complete_normally_nullable
                            validator: (value) {
                              if (value!.isEmpty) return "Digita el Peso Kg";
                            },
                            decoration: InputDecoration(
                                hintText: "Peso Kg",
                                icon: Icon(Icons.account_balance_wallet,
                                    color: Colors.purpleAccent)),
                            keyboardType: TextInputType.number,
                          ),
                        ),
                        Divider(),
                        Container(
                          width: 115,
                          height: 50,
                          padding: EdgeInsets.all(7),
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50)),
                              color: Colors.white,
                              boxShadow: const [
                                BoxShadow(color: Colors.black, blurRadius: 5)
                              ]),
                          child: TextFormField(
                            controller: controller_talla,
                            // ignore: body_might_complete_normally_nullable
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Digita Estatura Cm";
                              }
                            },
                            decoration: InputDecoration(
                                hintText: "Estatura Cm",
                                icon: Icon(Icons.present_to_all,
                                    color: Colors.blueAccent)),
                            keyboardType: TextInputType.number,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    height: 30.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      // ignore: deprecated_member_use
                      FlatButton(
                        onPressed: PesoIdealMujer,
                        shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(30.0)),
                        color: Colors.pinkAccent,
                        padding: EdgeInsets.all(10.0),
                        child: Column(
                          children: const <Widget>[
                            Icon(Icons.person),
                            Text('Mujer')
                          ],
                        ),
                      ),
                      VerticalDivider(),
                      // ignore: deprecated_member_use
                      FlatButton(
                        onPressed: PesoIdealHombre,
                        shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(30.0)),
                        color: Colors.blueAccent,
                        padding: EdgeInsets.all(10.0),
                        child: Column(
                          children: const <Widget>[
                            Icon(Icons.person),
                            Text('Hombre')
                          ],
                        ),
                      ),
                    ],
                  ),
                  Divider(
                    height: 40.0,
                  ),
                  //caja de resultado
                  Container(
                    height: 50.0,
                    width: 300,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            // ignore: use_full_hex_values_for_flutter_colors
                            colors: [Color(0xFFFE2E64), Color(0xFFfF781D8)]),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    //creamos resultado del TextFormField
                    child: Center(
                      child: Text(
                        muestreImc,
                        style: TextStyle(
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                  ),
                  Divider(
                    height: 15.0,
                  ),
                  Container(
                    height: 50.0,
                    width: 300,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            // ignore: use_full_hex_values_for_flutter_colors
                            colors: [Color(0xFFf04B4AE), Color(0xFFf81F7F3)]),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    //creamos resultador del TextFormField
                    child: Center(
                      child: Text(
                        pesoSugerido,
                        style: TextStyle(
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                  ),
                  Divider(
                    height: 1,
                  ),
                  new Container(
                    padding: EdgeInsets.all(2.0),
                    child: Stack(
                      children: <Widget>[
                        Align(
                          child: new Image(
                            width: 300.0,
                            height: 200.0,
                            image: new AssetImage('assets/imcx.png'),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ))),
    );
  }
}
