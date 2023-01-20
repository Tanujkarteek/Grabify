// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'Screens/welcome.dart';

void main() {
  runApp(const Grabify());
}

class Grabify extends StatelessWidget {
  const Grabify({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: WelcomePage(),
      ),
    );
  }
}
