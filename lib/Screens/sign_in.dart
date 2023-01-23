// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../Models/hero_logo.dart';
import '../Models/vectorasset.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body : Stack(
        children: [
           SvgPicture.asset(
            signin,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
          Container(
            width: MediaQuery.of(context).size.width,// height:  MediaQuery.of(context).size.width,
            child:Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height:MediaQuery.of(context).size.height*0.07
                ),
              SizedBox(
                height:175,
                child:FittedBox(
                  fit:BoxFit.cover,
                  child:Logo(),)
                  ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.19),
                Container(
                  width: MediaQuery.of(context).size.width,
                  padding:
                  const EdgeInsets.only(left:60,right:60,top:8,bottom:8),
                      
                          child:TextField(
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                              fillColor: Color.fromRGBO(216, 103, 4, 0.8),
                              filled:true,
                              focusColor: Color.fromARGB(204, 221, 167, 120),
                              border:OutlineInputBorder(borderRadius:BorderRadius.circular(15)),
                              hintStyle: TextStyle(color: Colors.white),
                              hintText: "RollNo"),
                              ),
                      ),
                      SizedBox(height: MediaQuery.of(context).size.height * 0.006),
                      
                      Container(
                        width: MediaQuery.of(context).size.width,

                        padding: 
                        const EdgeInsets.only(
                          left:60,
                          right:60,
                          top:8,
                          bottom:8,
                          ),
                          child:TextField(
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                              fillColor: Color.fromRGBO(216, 103, 4, 0.8),
                              filled:true,
                              focusColor: Color.fromARGB(204, 221, 167, 120),
                              border:OutlineInputBorder(borderRadius:BorderRadius.circular(15)),
                              hintStyle: TextStyle(color: Colors.white),
                              hintText: "Phone Number",),
                              ),
                          
                          ),
                          //SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                          Container(
                            child:Padding(padding: const EdgeInsets.only(top:0.5,bottom:4,right:132),
                            child:Column(children:<Widget>[
                               TextButton(
                            style: TextButton.styleFrom(
                              primary: Color.fromRGBO(224, 77,1, 0),
                              
                              ),
                              onPressed: (){}, 
                              child: const Text('Forget password?')
                              ),
                             ]
                             )
                             ),
                          
                          ),
                          
                              Container(
                                child: Padding(
                                  padding:const EdgeInsets.only(bottom: 100),
                                child:Column(
                                //crossAxisAlignment:CrossAxisAlignment.end,
                                children:<Widget>[
                                ElevatedButton(onPressed: () {  },
                                child: const Text('Sign in'),
                                style:ElevatedButton.styleFrom(
                                  backgroundColor: Color.fromRGBO(224, 77, 1, 0),
                                  padding:const EdgeInsets.only(left:50,
                                  right:50,top:14,bottom:15),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(14.0)
                                    ),
                                ),
                                ),
                                ]
                                ),
                                ),
                                ),
                                Container(


                                )
                            ]
                        ),
                      ),
                   ],
           ),
          );
  }
}