import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:otrapp/screens/home_screen.dart';
import 'package:otrapp/screens/intro_screem.dart';
import 'package:otrapp/screens/register_screen.dart';
import 'package:otrapp/services/auth_sevice.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: "AIzaSyA6G6-Unte5NPYOHnCmxrJLV4Ayi1Cw0Mg",
      appId: "1:427250110997:android:a1fb46c7e5066e1730b41c",
      messagingSenderId: "427250110997",
      projectId: "mosqueteros-digitales",
    ),
  ).then((value) {
    runApp(const MyApp());
  });
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: "intro",
        routes: {
          "intro": (_) => const IntroScreem(),
        },
        title: 'Flutter FIREBASE',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: StreamBuilder(
          stream: AuthSevice().firebaseAuth.authStateChanges(),
          builder: (context, snapchot) {
            if (snapchot.hasData) {
              return HomeScreen();
            }
            return const RegisterScreen();
          },
        ));
  }
}
