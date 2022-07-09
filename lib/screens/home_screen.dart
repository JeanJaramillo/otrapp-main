import 'package:flutter/material.dart';
import 'package:multilevel_drawer/multilevel_drawer.dart';
import 'package:otrapp/screens/CrearEventos.dart';
import 'package:otrapp/screens/Perfil.dart';
import 'package:otrapp/screens/addnote.dart';
import 'package:otrapp/screens/chart_homepage.dart';
import 'package:otrapp/screens/chat.dart';
import 'package:otrapp/screens/editarperfil.dart';
import 'package:otrapp/screens/eliminarperfil.dart';
import 'package:otrapp/screens/eventos.dart';
import 'package:otrapp/screens/mapa.dart';
import 'package:otrapp/screens/register_screen.dart';
import 'package:geocoding/geocoding.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class HomeScreen extends StatelessWidget {
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
          children: const <Widget>[
            Image(
              image: NetworkImage(
                  "https://z-p3-scontent.flim3-2.fna.fbcdn.net/v/t1.6435-9/39522454_2012494015470025_6587034575568896000_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=730e14&_nc_eui2=AeGbZUwVGs0A07pWTeLysH_yByQoJJpNmv8HJCgkmk2a_79hQLhbRxjgBDpCumilI9ryFMrvll1fgLdbxRUYT1BF&_nc_ohc=Nbx2JGkE_kAAX9Q9WMc&_nc_ht=z-p3-scontent.flim3-2.fna&oh=00_AT8oT5-odF_1PCKZsuweIpvMwc9zFp9NGgyjy6EGdp15ag&oe=62C6120C"),
              width: 100,
              height: 100,
            ),
            SizedBox(
              height: 10,
            ),
            Text("joao riofrio")
          ],
        )),
        children: [
          // Child Elements for Each Drawer Item
          MLMenuItem(
              leading: const Icon(Icons.person, color: Colors.blue),
              content: const Text(
                "Mi Perfil",
                textAlign: TextAlign.start,
              ),
              onClick: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => const Profile()));
              }),
          MLMenuItem(
              leading: const Icon(Icons.settings, color: Colors.orange),
              trailing: const Icon(Icons.arrow_right),
              content: const Text("Configuraciòn"),
              onClick: () {},
              subMenuItems: [
                MLSubmenu(
                    onClick: () {
                      Navigator.of(context).pop();
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) =>
                              const EditaPerfil()));
                    },
                    submenuContent: const Text("Editar tu Perfil")),
                MLSubmenu(
                    onClick: () {
                      Navigator.of(context).pop();
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) =>
                              const Eliminarcuenta()));
                    },
                    submenuContent: const Text("Eliminar tu Cuenta "))
              ]),
          MLMenuItem(
            leading: const Icon(Icons.emoji_events, color: Colors.green),
            content: const Text("Eventos"),
            onClick: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (BuildContext context) => Home()));
            },
          ),
          MLMenuItem(
            leading: const Icon(Icons.emoji_events, color: Colors.green),
            content: const Text("Eventoscrear"),
            onClick: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => addnote()));
            },
          ),
          MLMenuItem(
              leading: const Icon(Icons.chat, color: Colors.purple),
              content: const Text(
                "Chat",
              ),
              onClick: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => const Chat()));
              }),
          MLMenuItem(
              leading: const Icon(Icons.assessment_sharp, color: Colors.pink),
              content: const Text(
                "Monitoreo de Salud",
              ),
              onClick: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => const ChartHomePage()));
              }),
          MLMenuItem(
              leading: const Icon(Icons.assessment_sharp, color: Colors.pink),
              content: const Text(
                "Monitoreo de Salud",
              ),
              onClick: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => Mapa()));
              }),
          MLMenuItem(
              leading: const Icon(Icons.payment, color: Colors.cyan),
              content: const Text(
                "Cerrar Sesiòn",
              ),
              onClick: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => const RegisterScreen()));
              }),
        ],
      ),
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          "ROUTE MAPS",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color.fromRGBO(255, 65, 108, 1.0),
                  Color.fromRGBO(255, 75, 43, 1.0),
                ]),
          ),
          child: Center()),
    );
  }
}
