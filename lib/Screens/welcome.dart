// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../Models/vectorasset.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: <Widget>[
      SvgPicture.asset(
        wpage,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        fit: BoxFit.cover,
      ),
      Container(
        // decoration: BoxDecoration(
        //   color: Color.fromRGBO(42, 37, 80, 1),
        //   // image: DecorationImage(
        //   //   image: SvgPicture.asset(wpage) as ImageProvider,
        //   //   fit: BoxFit.cover,
        //   // ),
        // ),

        // height: MediaQuery.of(context).size.height * 0.6,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          // ignore: prefer_const_literals_to_create_immutables
          children: <Widget>[
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
            Text("Grabify",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 65,
                  fontFamily: 'Fredoka',
                )),
            SizedBox(
              height: /*200*/ MediaQuery.of(context).size.height * 0.17,
            ),
            Padding(
              padding: const EdgeInsets.all(0.8),
              // button in center with text Let's get started
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/login');
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      Color.fromARGB(255, 244, 119, 52)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  )),
                  elevation: MaterialStateProperty.all<double>(20),
                  overlayColor: MaterialStateProperty.all<Color>(
                      Color.fromARGB(255, 100, 3, 114)),
                ),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.7,
                  height: MediaQuery.of(context).size.height * 0.09,
                  child: Center(
                      child: Text("Let's get started!!",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontFamily: "Inter",
                          ))),
                ),
              ),
            ),
            SizedBox(height: /*100*/ MediaQuery.of(context).size.height * 0.23),
          ],
        ),
      ),
    ]));
  }
}
