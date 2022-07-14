import 'package:flutter/material.dart';
import 'package:multilevel_drawer/multilevel_drawer.dart';
import 'package:otrapp/screens/CrearEventos.dart';
import 'package:otrapp/screens/addnote.dart';
import 'package:otrapp/screens/calculadora_IMC.dart';
import 'package:otrapp/screens/chat.dart';
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
              /*Image(
                image: NetworkImage(
                    "https://z-p3-scontent.flim3-2.fna.fbcdn.net/v/t1.6435-9/39522454_2012494015470025_6587034575568896000_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=730e14&_nc_eui2=AeGbZUwVGs0A07pWTeLysH_yByQoJJpNmv8HJCgkmk2a_79hQLhbRxjgBDpCumilI9ryFMrvll1fgLdbxRUYT1BF&_nc_ohc=Nbx2JGkE_kAAX9Q9WMc&_nc_ht=z-p3-scontent.flim3-2.fna&oh=00_AT8oT5-odF_1PCKZsuweIpvMwc9zFp9NGgyjy6EGdp15ag&oe=62C6120C"),
                width: 100,
                height: 100,
              ),
              SizedBox(
                height: 10,
              ),
              Text("joao riofrio")*/
            ],
          )),
          children: [
            MLMenuItem(
              leading: const Icon(Icons.emoji_events, color: Colors.green),
              content: const Text("Eventos"),
              onClick: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => Home()));
              },
            ),
            MLMenuItem(
              leading: const Icon(Icons.emoji_events, color: Colors.green),
              content: const Text("Crear eventos"),
              onClick: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => Addnote()));
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
                  "Monitoreo de salud",
                ),
                onClick: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) => MyCalculatorApp()));
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
          iconTheme: IconThemeData(color: Colors.black),
          title: Text(
            "MI PERFIL",
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: CustomScrollView(
          //colocaremos un aray de widget
          slivers: [
            SliverList(
              delegate: SliverChildListDelegate([
                //crearemos un estack donde estara nuestra imagen de fondo .
                Stack(
                  children: [
                    Transform.translate(
                      //podemos modificar la imagen  en eje x,y
                      offset: const Offset(0.0, 22.0),
                      child: const FadeInImage(
                        //colocomos un fitbox fit para que cubra el espacio deseado.
                        fit: BoxFit.contain,
                        placeholder: NetworkImage(
                            'https://2.bp.blogspot.com/-obCm9f4gJHo/T0begYP85RI/AAAAAAAAxQ0/vHT81ewdgRo/s1600/paisajes-portada-facebook---www.bancodeimagenesgratuitas.com---11.jpg'),
                        image: NetworkImage(
                            'https://2.bp.blogspot.com/-obCm9f4gJHo/T0begYP85RI/AAAAAAAAxQ0/vHT81ewdgRo/s1600/paisajes-portada-facebook---www.bancodeimagenesgratuitas.com---11.jpg'),
                      ),
                    ),
                    Column(
                      children: [
                        //colocaremos la flecha de regreso
                        Container(
                          alignment: AlignmentDirectional.topStart,
                          margin: const EdgeInsets.only(top: 50.0, left: 10.0),
                          child: IconButton(
                            icon: const Icon(Icons.chevron_left,
                                color: Colors.red, size: 40.0),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ),
                        _accountInfo(),
                        _followTabs(),
                        _icons_Tab(),
                      ],
                    )
                  ],
                )
              ]),
            ),
            SliverPadding(
              //llamos a  la  estructora de fotos.
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              sliver: SliverGrid.count(
                crossAxisCount: 3,
                crossAxisSpacing: 15,
                mainAxisSpacing: 15,
                children: [
                  _photos(),
                  _photos(),
                  _photos(),
                  _photos(),
                  _photos(),
                  _photos(),
                  _photos(),
                  _photos(),
                  _photos(),
                  _photos(),
                  _photos(),
                  _photos(),
                ],
              ),
            ),
            SliverPadding(
              //llamos a  la  estructora de fotos.
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              sliver: SliverGrid.count(
                crossAxisCount: 3,
                crossAxisSpacing: 15,
                mainAxisSpacing: 15,
                children: [
                  _Galeria(),
                  _Galeria(),
                  _Galeria(),
                  _Galeria(),
                  _Galeria(),
                  _Galeria(),
                  _Galeria(),
                  _Galeria(),
                ],
              ),
            )
          ],
        ));
  }
} //clases

//creamos un widget de perfil
Widget _accountInfo() {
  return Center(
    child: Column(
      children: [
        const CircleAvatar(
          backgroundImage: AssetImage('assets/profile.png'),
          radius: 70.0,
        ),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 10.0),
          child: const Text('Joao Riofrio Flores',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 24.0)),
        )
      ],
    ),
  );
}

//creamos un widget de datos
Widget _followTabs() {
  return Container(
    color: const Color.fromRGBO(0, 0, 0, 0.4),
    //se modifica la ubicacion del contenedor margin
    margin: const EdgeInsets.only(top: 0.0),
    padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Column(
          children: const [
            Icon(
              Icons.run_circle_sharp,
              color: Colors.white,
              size: 18.0,
            ),
            Text(
              'KM Recorridos ',
              style: TextStyle(
                color: Color.fromARGB(255, 253, 254, 254),
                fontSize: 12.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text('23 KM',
                style: TextStyle(
                  color: Color.fromARGB(255, 253, 254, 254),
                  fontSize: 17.0,
                  fontWeight: FontWeight.w500,
                )),
          ],
        ),
        Column(
          children: const [
            Icon(
              Icons.camera_alt_outlined,
              color: Colors.white,
              size: 18.0,
            ),
            Text(
              'Instagram ',
              style: TextStyle(
                color: Color.fromARGB(255, 253, 254, 254),
                fontSize: 12.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text('@joao_4250',
                style: TextStyle(
                  color: Color.fromARGB(255, 253, 254, 254),
                  fontSize: 17.0,
                  fontWeight: FontWeight.w500,
                )),
          ],
        ),
        Column(
          children: const [
            Icon(
              Icons.fmd_good_rounded,
              color: Colors.white,
              size: 18.0,
            ),
            Text(
              'Ubicacion',
              style: TextStyle(
                color: Color.fromARGB(255, 253, 254, 254),
                fontSize: 12.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text('Villa Salvador',
                style: TextStyle(
                  color: Color.fromARGB(255, 253, 254, 254),
                  fontSize: 17.0,
                  fontWeight: FontWeight.w500,
                )),
          ],
        )
      ],
    ),
  );
}

//creamos un widget de iconos.
// ignore: non_constant_identifier_names
Widget _icons_Tab() {
  return Container(
    color: const Color.fromARGB(102, 241, 237, 237),
    //se modifica la ubicacion del contenedor margin
    //margin: EdgeInsets.only(top: 1.0),
    padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 15.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          icon: const Icon(Icons.picture_in_picture, size: 30.0),
          onPressed: () {},
        ),
        IconButton(
          icon: const Icon(Icons.insert_photo, size: 30.0),
          onPressed: () {},
        ),
        IconButton(
          icon: const Icon(Icons.play_circle_filled, size: 30.0),
          onPressed: () {},
        )
      ],
    ),
  );
}

Widget _photos() {
  return Container(
    child: ClipRRect(
        borderRadius: BorderRadius.circular(10.0),
        child: const Image(
          width: 110,
          height: 110,
          fit: BoxFit.cover,
          image: NetworkImage(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRxZV_i9nlzqWmN4B_HZp3i7QbDvuozI040HdwtmE5IeJjvxj6wlm920oTS-G2MdmKHWkA&usqp=CAU'),
        )),
  );
}

// ignore: non_constant_identifier_names
Widget _Galeria() {
  return Container(
    child: ClipRRect(
        borderRadius: BorderRadius.circular(10.0),
        child: const Image(
          width: 110,
          height: 110,
          fit: BoxFit.cover,
          image: NetworkImage(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ8MSdEjggOKwDD0dJx9FPI9W1A5fmg0kW3IA&usqp=CAU'),
        )),
  );
}
