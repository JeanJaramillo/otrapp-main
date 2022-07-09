import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:multilevel_drawer/multilevel_drawer.dart';
import 'package:otrapp/screens/chat.dart';
import 'package:otrapp/screens/editarperfil.dart';
import 'package:otrapp/screens/eliminarperfil.dart';
import 'package:otrapp/screens/eventos.dart';
import 'package:otrapp/screens/home_screen.dart';
import 'package:otrapp/screens/register_screen.dart';

class ChartHomePage extends StatefulWidget {
  const ChartHomePage({Key? key}) : super(key: key);

  @override
  _ChartHomePageState createState() => _ChartHomePageState();
}

class _ChartHomePageState extends State<ChartHomePage> {
  late List<charts.Series<Calorias, String>> _seriesData;
  late List<charts.Series<Task, String>> _seriesPieData;
  late List<charts.Series<Horas, int>> _seriesLineData;

  _generateData() {
    var data1 = [
      Calorias(1980, 'Semana 1', 3000),
      Calorias(1980, 'Samana 2', 4540),
      Calorias(1980, 'Samana 3', 3890),
      Calorias(1980, 'Samana 4', 900),
    ];

    var piedata = [
      Task('Work', 35.8, const Color(0xff3366cc)),
      Task('Eat', 8.3, const Color(0xff990099)),
      Task('Commute', 10.8, const Color(0xff109618)),
      Task('TV', 15.6, const Color(0xfffdbe19)),
      Task('Sleep', 19.2, const Color(0xffff9900)),
      Task('Other', 10.3, const Color(0xffdc3912)),
    ];

    var linesalesdata = [
      Horas(0, 56),
      Horas(1, 46),
      Horas(2, 59),
      Horas(3, 34)
    ];
    var linesalesdata1 = [
      Horas(0, 77),
      Horas(1, 42),
      Horas(2, 60),
      Horas(3, 46)
    ];

    var linesalesdata2 = [
      Horas(0, 32),
      Horas(1, 55),
      Horas(2, 71),
      Horas(3, 30)
    ];

    _seriesData.add(
      charts.Series(
        domainFn: (Calorias pollution, _) => pollution.place,
        measureFn: (Calorias pollution, _) => pollution.quantity,
        id: '2017',
        data: data1,
        fillPatternFn: (_, __) => charts.FillPatternType.solid,
        fillColorFn: (Calorias pollution, _) => charts.ColorUtil.fromDartColor(
            const Color.fromARGB(255, 173, 83, 80)),
      ),
    );

    _seriesPieData.add(
      charts.Series(
        domainFn: (Task task, _) => task.task,
        measureFn: (Task task, _) => task.taskvalue,
        colorFn: (Task task, _) =>
            charts.ColorUtil.fromDartColor(task.colorval),
        id: 'Air Pollution',
        data: piedata,
        labelAccessorFn: (Task row, _) => '${row.taskvalue}',
      ),
    );

    _seriesLineData.add(
      charts.Series(
        colorFn: (__, _) => charts.ColorUtil.fromDartColor(
            const Color.fromARGB(255, 141, 1, 255)),
        id: 'Air Pollution',
        data: linesalesdata,
        domainFn: (Horas sales, _) => sales.yearval,
        measureFn: (Horas sales, _) => sales.salesval,
      ),
    );
    _seriesLineData.add(
      charts.Series(
        colorFn: (__, _) =>
            charts.ColorUtil.fromDartColor(const Color(0xff109618)),
        id: 'Air Pollution',
        data: linesalesdata1,
        domainFn: (Horas sales, _) => sales.yearval,
        measureFn: (Horas sales, _) => sales.salesval,
      ),
    );
    _seriesLineData.add(
      charts.Series(
        colorFn: (__, _) =>
            charts.ColorUtil.fromDartColor(const Color(0xffff9900)),
        id: 'Air Pollution',
        data: linesalesdata2,
        domainFn: (Horas sales, _) => sales.yearval,
        measureFn: (Horas sales, _) => sales.salesval,
      ),
    );
  }

  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    _seriesData = <charts.Series<Calorias, String>>[];
    _seriesPieData = <charts.Series<Task, String>>[];
    _seriesLineData = <charts.Series<Horas, int>>[];
    _generateData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MultiLevelDrawer(
        backgroundColor: Colors.white,
        rippleColor: Colors.black,
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
                    builder: (BuildContext context) => HomeScreen()));
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
                    builder: (BuildContext context) => const ChartHomePage()));
              }),
          MLMenuItem(
              leading: const Icon(Icons.payment),
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
      body: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: const Color(0xffFFFFFF),
            //backgroundColor: Color(0xff308e1c),
            bottom: const TabBar(
              indicatorColor: Color.fromARGB(255, 154, 152, 155),
              tabs: [
                Tab(
                  icon: Icon(Icons.directions_run,
                      color: Color.fromARGB(255, 54, 54, 54)),
                ),
                Tab(
                    icon: Icon(Icons.insights,
                        color: Color.fromARGB(255, 54, 54, 54))),
                Tab(
                    icon: Icon(Icons.bed,
                        color: Color.fromARGB(255, 54, 54, 54))),
              ],
            ),
            title: const Text('Monitoreo de Salud',
                style: TextStyle(color: Color(0xff000000))),
          ),
          body: TabBarView(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Column(
                    children: <Widget>[
                      const Text(
                        'Record de Calorías Quemadas',
                        style: TextStyle(
                            fontSize: 24.0, fontWeight: FontWeight.bold),
                      ),
                      Expanded(
                        child: charts.BarChart(
                          _seriesData,
                          animate: true,
                          barGroupingType: charts.BarGroupingType.grouped,
                          //behaviors: [new charts.SeriesLegend()],
                          animationDuration: const Duration(seconds: 5),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Column(
                    children: <Widget>[
                      const Text(
                        'Time spent on daily tasks',
                        style: TextStyle(
                            fontSize: 24.0, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Expanded(
                        child: charts.PieChart(_seriesPieData,
                            animate: true,
                            animationDuration: const Duration(seconds: 5),
                            behaviors: [
                              charts.DatumLegend(
                                outsideJustification:
                                    charts.OutsideJustification.endDrawArea,
                                horizontalFirst: false,
                                desiredMaxRows: 2,
                                cellPadding: const EdgeInsets.only(
                                    right: 4.0, bottom: 4.0),
                                entryTextStyle: charts.TextStyleSpec(
                                    color: charts
                                        .MaterialPalette.purple.shadeDefault,
                                    fontFamily: 'Georgia',
                                    fontSize: 11),
                              )
                            ],
                            defaultRenderer: charts.ArcRendererConfig(
                                arcWidth: 100,
                                arcRendererDecorators: [
                                  charts.ArcLabelDecorator(
                                      labelPosition:
                                          charts.ArcLabelPosition.inside)
                                ])),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Column(
                    children: <Widget>[
                      const Text(
                        'Nivel de Sueño Por Semana',
                        style: TextStyle(
                            fontSize: 24.0, fontWeight: FontWeight.bold),
                      ),
                      Expanded(
                        child: charts.LineChart(_seriesLineData,
                            defaultRenderer: charts.LineRendererConfig(
                                includeArea: true, stacked: true),
                            animate: true,
                            animationDuration: const Duration(seconds: 5),
                            behaviors: [
                              charts.ChartTitle('Semanas',
                                  behaviorPosition:
                                      charts.BehaviorPosition.bottom,
                                  titleOutsideJustification: charts
                                      .OutsideJustification.middleDrawArea),
                              charts.ChartTitle('Horas',
                                  behaviorPosition:
                                      charts.BehaviorPosition.start,
                                  titleOutsideJustification: charts
                                      .OutsideJustification.middleDrawArea),
                              charts.ChartTitle(
                                'On the Route',
                                behaviorPosition: charts.BehaviorPosition.end,
                                titleOutsideJustification:
                                    charts.OutsideJustification.middleDrawArea,
                              )
                            ]),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Calorias {
  String place;
  int year;
  int quantity;

  Calorias(this.year, this.place, this.quantity);
}

class Task {
  String task;
  double taskvalue;
  Color colorval;

  Task(this.task, this.taskvalue, this.colorval);
}

class Horas {
  int yearval;
  int salesval;

  Horas(this.yearval, this.salesval);
}
