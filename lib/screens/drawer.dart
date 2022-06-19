import 'package:flutter/material.dart';

class DrawerOtr extends StatelessWidget {
  const DrawerOtr({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          color: Color(0xfff6eaff),
        ),
        child: const Center(
          child: Text(
            "Perfil de Usuario",
            style: TextStyle(fontSize: 25),
          ),
        ),
      ),
    );
  }
}
