// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../Models/Logo.dart';
import 'package:slide_to_act/slide_to_act.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Color.fromRGBO(42, 37, 80, 1)),
      // height: MediaQuery.of(context).size.height * 0.6,
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          SizedBox(height: MediaQuery.of(context).size.height * 0.1),
          CircleAvatar(
            radius: 100,
            backgroundColor: Color.fromRGBO(42, 37, 80, 1),
            child: SvgPicture.asset(
              logo,
              height: 200,
              width: 200,
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.045),
          Text("Grabify", style: TextStyle(color: Colors.white, fontSize: 72)),
          SizedBox(
            height: /*200*/ MediaQuery.of(context).size.height * 0.25,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SlideAction(
              onSubmit: () {
                //change the screen to login page
              },
            ),
          ),
          SizedBox(height: /*100*/ MediaQuery.of(context).size.height * 0.15),
        ],
      ),
    );
  }
}
