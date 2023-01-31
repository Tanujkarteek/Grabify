import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

class Cartmodel extends ChangeNotifier {
  final List _shopItems = [
    [
      "Smoodh",
      "https://res.cloudinary.com/dlg7afigb/image/upload/v1674783713/Grabify/smoodh_caramel_oux3vi.jpg",
      "10",
      "Caramel",
      "0"
    ],
    [
      "Samosa",
      "https://res.cloudinary.com/dlg7afigb/image/upload/v1674927318/Grabify/61A_XfXt-2L._SL1459__wtquqi.jpg",
      "15",
      "Aloo Samosa",
      "0"
    ],
    [
      "Maggi",
      "https://res.cloudinary.com/dlg7afigb/image/upload/v1674927100/Grabify/81dpDHc95AL_qr5suo.jpg",
      "25",
      "Normal",
      "0"
    ],
    [
      "Pani Puri",
      "https://res.cloudinary.com/dlg7afigb/image/upload/v1674934005/Grabify/download_4_ldb7to.jpg",
      "20",
      "Pani Puri",
      "0"
    ],
    [
      "Chole Bhature",
      "https://res.cloudinary.com/dlg7afigb/image/upload/v1674934010/Grabify/chole-bhature-recipe_zxbywr.jpg",
      "90",
      "3 Bhature",
      "0"
    ],
    [
      "Chilli Potato",
      "https://res.cloudinary.com/dlg7afigb/image/upload/v1674934012/Grabify/honey-chilli_u0yhbi.jpg",
      "50",
      "Aloo Chilli",
      "0"
    ],
    [
      "Oreo Shake",
      "https://res.cloudinary.com/dlg7afigb/image/upload/v1674935159/Grabify/oreo_shake_lzs8q3.jpg",
      "70",
      "Milk Shake",
      "0"
    ],
    [
      "Veg  Patty Roll",
      "https://res.cloudinary.com/dlg7afigb/image/upload/v1674934019/Grabify/Kolkata_egg_roll_djgyzk.jpg",
      "50",
      "Vegetarian",
      "0"
    ],
    [
      "Veg Fried Rice",
      "https://res.cloudinary.com/dlg7afigb/image/upload/v1674934023/Grabify/download_2_liemhq.jpg",
      "50",
      "Fried RIce",
      "0"
    ],
    [
      "Veg Chowmein",
      "https://res.cloudinary.com/dlg7afigb/image/upload/v1674934028/Grabify/download_1_v5bpr6.jpg",
      "50",
      "Vegetarian",
      "0"
    ],
    [
      "French Fries",
      "https://res.cloudinary.com/dlg7afigb/image/upload/v1674934293/Grabify/frenchfry_ewzixk.jpg",
      "70",
      "Small",
      "0"
    ],
    [
      "Pasta",
      "https://res.cloudinary.com/dlg7afigb/image/upload/v1674934244/Grabify/pasta_y7othr.jpg",
      "50",
      "Chinese",
      "0"
    ],
    [
      "Bread Pakoda",
      "https://res.cloudinary.com/dlg7afigb/image/upload/v1674934572/Grabify/breadpakoda_kjwhum.jpg",
      "20",
      "Aloo Bread",
      "0"
    ],
    [
      "Omlet",
      "https://res.cloudinary.com/dlg7afigb/image/upload/v1674934519/Grabify/omlet_j0vmjv.jpg",
      "30",
      "Double",
      "0"
    ],
    [
      "Burger",
      "https://res.cloudinary.com/dlg7afigb/image/upload/v1674934927/Grabify/burger-recipe-4_bmvblb.webp",
      "60",
      "Veg Burger",
      "0"
    ],
    [
      "Lassi",
      "https://res.cloudinary.com/dlg7afigb/image/upload/v1674935034/Grabify/Lassi_c55gby.webp",
      "30",
      "Sweet Lassi",
      "0"
    ],
    [
      "Chicken Wings",
      "https://res.cloudinary.com/dlg7afigb/image/upload/v1674936057/Grabify/download_6_o4xcjl.jpg",
      "100",
      "3pcs",
      "0"
    ],
    [
      "Veg Nuggets",
      "https://res.cloudinary.com/dlg7afigb/image/upload/v1674936055/Grabify/download_7_kx4csy.jpg",
      "80",
      "10pcs",
      "0"
    ],
    [
      "Fresh Lime",
      "https://res.cloudinary.com/dlg7afigb/image/upload/v1674936066/Grabify/91007fd507aa9b78e9c76b779d787f9c_zhm0xg.jpg",
      "20",
      "Salt",
      "0"
    ],
    [
      "Cold Coffee",
      "https://res.cloudinary.com/dlg7afigb/image/upload/v1674936063/Grabify/download_5_etmfr5.jpg",
      "60",
      "Normal",
      "0"
    ],
  ];

  //list of items in cart
  final List _cartItems = [];
  final List _likedItems = [];

  get shopItems => _shopItems;

  get cartItems => _cartItems;

  get likedItems => _likedItems;

  //add item to cart only if it is not already in cart if it there then increase the quantity i.e. [4]th index of list of each item
  void addItemToCart(int index) {
    bool isPresent = false;
    for (var i = 0; i < _cartItems.length; i++) {
      if (_cartItems[i][0] == _shopItems[index][0]) {
        isPresent = true;
        _cartItems[i][4] = (int.parse(_cartItems[i][4]) + 1).toString();
      }
    }
    if (!isPresent) {
      _shopItems[index][4] = "1";
      _cartItems.add(_shopItems[index]);
      //make quantity i.e. [4]th index of list of each item 1
    }
    notifyListeners();
  }

  //single item remove from cart
  void removeSingleItemFromCart(int index) {
    if (_cartItems[index][4] == "1") {
      _cartItems.removeAt(index);
    } else {
      _cartItems[index][4] = (int.parse(_cartItems[index][4]) - 1).toString();
    }
    notifyListeners();
  }

  // add single item inside cart
  void addSingleItemToCart(int index) {
    _cartItems[index][4] = (int.parse(_cartItems[index][4]) + 1).toString();
    notifyListeners();
  }

  //remove item from cart
  void removeFromCart(int index) {
    _cartItems.removeAt(index);
    notifyListeners();
  }

  //get total price of items in cart
  String getTotalPrice() {
    int total = 0;
    for (var i = 0; i < _cartItems.length; i++) {
      total += int.parse(_cartItems[i][2]) * int.parse(_cartItems[i][4]);
    }
    return total.toString();
  }

  //liked item list only add item to liked list if it is not already in liked list
  void addLikedItem(int index) {
    bool isPresent = false;
    for (var i = 0; i < _likedItems.length; i++) {
      if (_likedItems[i][0] == _shopItems[index][0]) {
        isPresent = true;
      }
    }
    if (!isPresent) {
      _likedItems.add(_shopItems[index]);
    }
    notifyListeners();
  }

  // remove item from liked list
  void removeLikedItem(int index) {
    _likedItems.removeAt(index);
    notifyListeners();
  }

  //add to cart from liked item page
  void addLikedItemToCart(int index) {
    bool isPresent = false;
    for (var i = 0; i < _cartItems.length; i++) {
      if (_cartItems[i][0] == _likedItems[index][0]) {
        isPresent = true;
        _cartItems[i][4] = (int.parse(_cartItems[i][4]) + 1).toString();
      }
    }
    if (!isPresent) {
      _likedItems[index][4] = "1";
      _cartItems.add(_likedItems[index]);
    }
    notifyListeners();
  }
}
