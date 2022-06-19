import 'package:flutter/material.dart';
import 'package:otrapp/screens/register_screen.dart';

class IntroScreem extends StatefulWidget {
  const IntroScreem({Key? key}) : super(key: key);

  @override
  State<IntroScreem> createState() => _IntroScreemState();
}

class _IntroScreemState extends State<IntroScreem> {
  @override
  void initState() {
    var d = const Duration(seconds: 3);
    Future.delayed(d, () {
      Navigator.pushAndRemoveUntil(context,
          MaterialPageRoute(builder: (context) {
        return const RegisterScreen();
      }), (route) => false);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/running.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: const Align(
              alignment: Alignment.bottomCenter,
              child: ListTile(
                title: Text(
                  "On The Route App",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(55.0),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: CircularProgressIndicator(
                color: Colors.black,
              ),
            ),
          )
        ],
      ),
    );
  }
}
