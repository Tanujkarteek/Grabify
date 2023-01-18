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
      home: Scaffold(
        body: WelcomePage(),
      ),
    );
  }
}
