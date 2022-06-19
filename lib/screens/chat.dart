import 'package:flutter/material.dart';

class Chat extends StatelessWidget {
  static const String routeName = '/contact';

  const Chat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Chat"),
        ),
        body: const Center(child: Text("This is contact page")));
  }
}
