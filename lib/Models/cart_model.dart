import 'package:flutter/material.dart';

class Cartmodel extends ChangeNotifier {
  final List _shopItems = [
    // [itemName, itemImagePath, itemPrice, itemDescription]
    [
      "Smoodh",
      "https://res.cloudinary.com/dlg7afigb/image/upload/v1674783709/Grabify/smoodh_hazelnut_yptkng.jpg",
      "10",
      "Hazelnut"
    ],
    [
      "Smoodh",
      "https://res.cloudinary.com/dlg7afigb/image/upload/v1674783718/Grabify/smoodh_chocolate_oqijlf.jpg",
      "10",
      "Chocolate"
    ],
    [
      "Smoodh",
      "https://res.cloudinary.com/dlg7afigb/image/upload/v1674783713/Grabify/smoodh_caramel_oux3vi.jpg",
      "10",
      "Caramel"
    ],
    [
      "Smoodh",
      "https://res.cloudinary.com/dlg7afigb/image/upload/v1674783707/Grabify/smoodh_coffee_dcpshd.jpg",
      "10",
      "Coffee Frappe"
    ],
  ];

  //list of items in cart
  final List _cartItems = [];

  get shopItems => _shopItems;

  get cartItems => _cartItems;

  //add item to cart
  void addItemToCart(int index) {
    _cartItems.add(_shopItems[index]);
    notifyListeners();
  }

  //remove item from cart
  void removeFromCart(int index) {
    _cartItems.removeAt(index);
    notifyListeners();
  }

  //get total price of items in cart
  String getTotalPrice() {
    double totalPrice = 0;
    for (var i = 0; i < _cartItems.length; i++) {
      totalPrice += double.parse(_cartItems[i][2]);
    }
    return totalPrice.toStringAsFixed(1);
  }
}
