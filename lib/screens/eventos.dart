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
                leading: const Icon(Icons.person),
                content: const Text(
                  "Mi Perfil",
                ),
                onClick: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) => const Profile()));
                }),
            MLMenuItem(
                leading: const Icon(Icons.settings),
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
              leading: const Icon(Icons.emoji_events),
              content: const Text("Eventos"),
              onClick: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => const Eventos()));
              },
            ),
            MLMenuItem(
                leading: const Icon(Icons.chat),
                content: const Text(
                  "Chat",
                ),
                onClick: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) => const Chat()));
                }),
            MLMenuItem(
                leading: const Icon(Icons.assessment_sharp),
                content: const Text(
                  "Monitoreo de Salud",
                ),
                onClick: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) =>
                          const ChartHomePage()));
                }),
            MLMenuItem(
                leading: const Icon(Icons.payment),
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
            "OTR - EVENTOS",
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.all(20.0),
          children: [
            _eventOne(),
            _eventTwo(),
            _eventThree(),
            _eventFour(),
            _eventFive()
          ],
        ));
  }

  _eventOne() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 180.0,
        decoration: BoxDecoration(
          color: const Color(0xfff6eaff),
          borderRadius: const BorderRadius.all(Radius.circular(32)),
          boxShadow: [
            BoxShadow(
                color: const Color(0xff86727a).withOpacity(0.29),
                offset: const Offset(-10, 10),
                blurRadius: 10,
                spreadRadius: 10)
          ],
          image: const DecorationImage(
              image: AssetImage('assets/1.png'), fit: BoxFit.cover),
        ),
      ),
    );
  }

  _eventTwo() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 180.0,
        decoration: BoxDecoration(
          color: const Color(0xfff6eaff),
          borderRadius: const BorderRadius.all(Radius.circular(32)),
          boxShadow: [
            BoxShadow(
                color: const Color(0xff86727a).withOpacity(0.29),
                offset: const Offset(-10, 10),
                blurRadius: 10,
                spreadRadius: 10)
          ],
          image: const DecorationImage(
              image: AssetImage('assets/2.png'), fit: BoxFit.cover),
        ),
      ),
    );
  }

  _eventThree() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 180.0,
        decoration: BoxDecoration(
          color: const Color(0xfff6eaff),
          borderRadius: const BorderRadius.all(Radius.circular(32)),
          boxShadow: [
            BoxShadow(
                color: const Color(0xff86727a).withOpacity(0.29),
                offset: const Offset(-10, 10),
                blurRadius: 10,
                spreadRadius: 10)
          ],
          image: const DecorationImage(
              image: AssetImage('assets/3.png'), fit: BoxFit.cover),
        ),
      ),
    );
  }

  _eventFour() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 180.0,
        decoration: BoxDecoration(
          color: const Color(0xfff6eaff),
          borderRadius: const BorderRadius.all(Radius.circular(32)),
          boxShadow: [
            BoxShadow(
                color: const Color(0xff86727a).withOpacity(0.29),
                offset: const Offset(-10, 10),
                blurRadius: 10,
                spreadRadius: 10)
          ],
          image: const DecorationImage(
              image: AssetImage('assets/4.png'), fit: BoxFit.cover),
        ),
      ),
    );
  }

  _eventFive() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 180.0,
        decoration: BoxDecoration(
          color: const Color(0xfff6eaff),
          borderRadius: const BorderRadius.all(Radius.circular(32)),
          boxShadow: [
            BoxShadow(
                color: const Color(0xff86727a).withOpacity(0.29),
                offset: const Offset(-10, 10),
                blurRadius: 10,
                spreadRadius: 10)
          ],
          image: const DecorationImage(
              image: AssetImage('assets/5.png'), fit: BoxFit.cover),
        ),
      ),
    );
  }
}
