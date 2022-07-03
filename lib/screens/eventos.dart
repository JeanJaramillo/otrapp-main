import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:multilevel_drawer/multilevel_drawer.dart';
import 'package:otrapp/screens/Perfil.dart';
import 'package:otrapp/screens/chart_homepage.dart';
import 'package:otrapp/screens/chat.dart';
import 'package:otrapp/screens/editarperfil.dart';
import 'package:otrapp/screens/eliminarperfil.dart';
import 'package:otrapp/screens/register_screen.dart';

class Eventos extends StatelessWidget {
  const Eventos({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          iconTheme: const IconThemeData(color: Colors.black),
          title: const Text(
            "OTR - EVENTOS",
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: ListView(children: <Widget>[
          Container(
            height: 600,

            //damos  un poco de relleno

            padding: EdgeInsets.all(10),
            child: Card(
              elevation: 20,
              color: Colors.grey[300],
              shadowColor: Colors.blueGrey,
              // crear una esquina redondeada
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              //agregamos los margenes
              margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
              //vamos a dar una columna para permitir más detalles
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                    child: Image(
                      image: AssetImage('assets/evento_ciclismo1.png'),
                      fit: BoxFit.none,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20),
                    alignment: Alignment.center,
                    child: Text('GRAN RECORRIDO A  PUNTA HERMOSA. ',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 28,
                        )),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20),
                    alignment: Alignment.center,
                    child: Text(
                      'JUEV.26 de Abril a las 06:00 am.\n '
                      'Calle los narcos 690-Miraflores\n'
                      '569 Intesados -100 asistiran\n',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  RaisedButton(
                    color: Colors.red,
                    textColor: Colors.black,
                    child:
                        Text("Me Interesa", style: TextStyle(fontSize: 20.0)),
                    onPressed: () {},
                  )
                ],
              ),
            ),
          ),
          Container(
              height: 600,

              //damos  un poco de relleno

              padding: EdgeInsets.all(10),
              child: Card(
                  elevation: 20,
                  color: Colors.grey[300],
                  shadowColor: Colors.blueGrey,
                  // crear una esquina redondeada
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  //agregamos los margenes
                  margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
                  //vamos a dar una columna para permitir más detalles
                  child: Column(children: [
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                      child: Image(
                        image: AssetImage('evento1.png'),
                        fit: BoxFit.none,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20),
                      alignment: Alignment.center,
                      child: Text('GRAN RECORRIDO A  PUNTA HERMOSA. ',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 28,
                          )),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20),
                      alignment: Alignment.center,
                      child: Text(
                        'JUEV.26 de Abril a las 06:00 am.\n '
                        'Calle los narcos 690-Miraflores\n'
                        '569 Intesados -100 asistiran\n',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    RaisedButton(
                      color: Colors.red,
                      textColor: Colors.black,
                      child:
                          Text("Me Interesa", style: TextStyle(fontSize: 20.0)),
                      onPressed: () {},
                    )
                  ]))),
          Container(
              height: 600,

              //damos  un poco de relleno

              padding: EdgeInsets.all(10),
              child: Card(
                  elevation: 20,
                  color: Colors.grey[300],
                  shadowColor: Colors.blueGrey,
                  // crear una esquina redondeada
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  //agregamos los margenes
                  margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
                  //vamos a dar una columna para permitir más detalles
                  child: Column(children: [
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                      child: Image(
                        image: AssetImage('evento2.png'),
                        fit: BoxFit.none,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20),
                      alignment: Alignment.center,
                      child: Text('GRAN RECORRIDO A  PUNTA HERMOSA. ',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 28,
                          )),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20),
                      alignment: Alignment.center,
                      child: const Text(
                        'JUEV.26 de Abril a las 06:00 am.\n '
                        'Calle los narcos 690-Miraflores\n'
                        '569 Intesados -100 asistiran\n',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                    RaisedButton(
                      color: Colors.red,
                      textColor: Colors.black,
                      child:
                          Text("Me Interesa", style: TextStyle(fontSize: 20.0)),
                      onPressed: () {},
                    )
                  ])))
        ]));
  }
}
/*MaterialButton(
                    minWidth: 200.0,
                    height: 40.0,
                    onPressed: () {
                      Navigator.of(context).pop();
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) => const Chat()));
                    },
                    color: Colors.lightBlue,
                    child: Text('Material Button',
                        style: TextStyle(color: Colors.white)),
                  ),*/