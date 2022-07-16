import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:otrapp/screens/eventos.dart';

// ignore: must_be_immutable
class Editenote extends StatefulWidget {
  DocumentSnapshot docid;
  Editenote({Key? key, required this.docid}) : super(key: key);

  @override
  _EditenoteState createState() => _EditenoteState();
}

class _EditenoteState extends State<Editenote> {
  TextEditingController title = TextEditingController();
  TextEditingController content = TextEditingController();

  @override
  void initState() {
    title = TextEditingController(text: widget.docid.get('title'));
    content = TextEditingController(text: widget.docid.get('content'));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'Crear Eventos',
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          MaterialButton(
            onPressed: () {
              widget.docid.reference.update({
                'title': title.text,
                'content': content.text,
              }).whenComplete(() {
                Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (_) => const Home()));
              });
            },
            child: const Text("Guardar"),
          ),
          MaterialButton(
            onPressed: () {
              widget.docid.reference.delete().whenComplete(() {
                Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (_) => const Home()));
              });
            },
            child: const Text("Eliminar"),
          ),
        ],
      ),
      // ignore: avoid_unnecessary_containers
      body: Container(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(border: Border.all()),
              child: TextField(
                controller: title,
                decoration: const InputDecoration(
                  hintText: 'title',
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(border: Border.all()),
                child: TextField(
                  controller: content,
                  expands: true,
                  maxLines: null,
                  decoration: const InputDecoration(
                    hintText: 'content',
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
