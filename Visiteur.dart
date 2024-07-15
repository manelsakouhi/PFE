import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'login.dart';

class Visiteur extends StatefulWidget {
  const Visiteur({super.key});

  @override
  State<Visiteur> createState() => _VisiteurState();
}

class _VisiteurState extends State<Visiteur> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Visiteur"),
        actions: [
          IconButton(
            onPressed: () {
              logout(context);
            },
            icon: const Icon(
              Icons.logout,
            ),
          )
        ],
      ),
    );
  }

  Future<void> logout(BuildContext context) async  {
    const CircularProgressIndicator();
    await FirebaseAuth.instance.signOut();
     Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => LoginPage(),
      ),
    );
  }
}