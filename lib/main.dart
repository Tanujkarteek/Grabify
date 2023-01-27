// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:grabify/Models/cart_model.dart';
import 'package:grabify/Screens/home.dart';
//import 'package:grabify/Models/footer.dart';
//import 'package:grabify/Screens/welcome.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const Grabify());
}

class Grabify extends StatelessWidget {
  const Grabify({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Cartmodel(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: MyHome(),
        ),
      ),
    );
  }
}
