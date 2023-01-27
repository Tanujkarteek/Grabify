// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sized_box_for_whitespace, avoid_unnecessary_containers, unnecessary_getters_setters

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
//import 'package:grabify/Components/footer.dart';
import 'package:grabify/Components/iconasset.dart';
import 'package:grabify/Models/cart_model.dart';
import 'package:grabify/Screens/cart_page.dart';
import 'package:provider/provider.dart';

import '../Components/home_item_tile.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const CartPage(),
          ),
        ),
        backgroundColor: Color.fromRGBO(224, 77, 1, 1),
        child: Icon(
          Icons.shopping_cart,
          color: Colors.white,
        ),
      ),
      backgroundColor: Color.fromRGBO(42, 37, 80, 1),
      body: SafeArea(
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: SingleChildScrollView(
            child: Container(
              //color: Color.fromRGBO(42, 37, 80, 1),
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Stack(
                children: <Widget>[
                  Container(
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.03,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          child: Row(
                            children: <Widget>[
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.05,
                              ),
                              RichText(
                                text: TextSpan(
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: 'Hello, ',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 25,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    TextSpan(
                                      text: 'Tanuj',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 25,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w800,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Spacer(),
                              SvgPicture.asset(
                                searchicon,
                                height: 40,
                                width: 40,
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.04,
                              ),
                              CircleAvatar(
                                radius: 20,
                                backgroundImage:
                                    AssetImage('assets/images/flutter.png'),
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.05,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.07,
                        ),
                        Expanded(
                          child: Consumer<Cartmodel>(
                            builder: (context, value, child) {
                              return GridView.builder(
                                itemCount: value.shopItems.length,
                                gridDelegate:
                                    const SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: 2,
                                        childAspectRatio: 150 / 235),
                                itemBuilder: (context, index) {
                                  return HomeItemTile(
                                    itemName:
                                        value.shopItems[index][0].toString(),
                                    itemImagePath: value.shopItems[index][1],
                                    itemPrice:
                                        value.shopItems[index][2].toString(),
                                    itemDescription:
                                        value.shopItems[index][3].toString(),
                                    onPressed: () => Provider.of<Cartmodel>(
                                            context,
                                            listen: false)
                                        .addItemToCart(index),
                                  );
                                },
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  //MyFooter(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
