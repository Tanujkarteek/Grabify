// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../Models/hero_logo.dart';
import '../Models/vectorasset.dart';

class MyLogin extends StatefulWidget {
  const MyLogin({super.key});

  @override
  State<MyLogin> createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          SvgPicture.asset(
            signup,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                // SizedBox(height: MediaQuery.of(context).size.height * 0.002),
                // Container(
                //     height: MediaQuery.of(context).size.height * 0.4,
                //     width: MediaQuery.of(context).size.width * 0.4,
                //     child: SizedBox(
                //         height: 300,
                //         width: 200,
                //         child:
                //             FittedBox(fit: BoxFit.scaleDown, child: Logo()))),
                Transform.scale(
                  scale: 0.5,
                  child: Logo(),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.05),
                //Take inputs of name and roll number and phonenumber
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Name',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Roll Number',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Phone Number',
                    ),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.05),
                //button to continue to new password setting page
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () {
                      //navigate to sign_up.dart
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => MyLogin()));
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
                      width: MediaQuery.of(context).size.width * 0.28,
                      height: MediaQuery.of(context).size.height * 0.055,
                      child: Center(
                        child: Text(
                          "Continue",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.1),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
