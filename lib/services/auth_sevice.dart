import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthSevice {
  FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  //registramos el usuario
  // ignore: body_might_complete_normally_nullable
  Future<User?> register(
      String email, String password, BuildContext context) async {
    try {
      UserCredential userCredential = await firebaseAuth
          .createUserWithEmailAndPassword(email: email, password: password);
      return userCredential.user;
    } on FirebaseAuthException catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text(e.message.toString()),
        backgroundColor: Colors.red,
      ));
    }
    // ignore: unused_element
    cach(e) {
      // ignore: avoid_print
      print(e);
    }
  }

  // login
  // ignore: body_might_complete_normally_nullable
  Future<User?> login(
      String email, String password, BuildContext context) async {
    try {
      UserCredential userCredential = await firebaseAuth
          .signInWithEmailAndPassword(email: email, password: password);
      return userCredential.user;
    } on FirebaseException catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text(e.message.toString()),
        backgroundColor: Colors.red,
      ));
    } catch (e) {
      // ignore: avoid_print
      print(e);
    }
  }
}
