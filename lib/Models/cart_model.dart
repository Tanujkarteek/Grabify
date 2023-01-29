import 'package:flutter/material.dart';

class Cartmodel extends ChangeNotifier {
  final List _shopItems = [
    [
      "Smoodh",
      "https://res.cloudinary.com/dlg7afigb/image/upload/v1674783713/Grabify/smoodh_caramel_oux3vi.jpg",
      "10",
      "Caramel"
    ],
    [
      "Samosa",
      "https://res.cloudinary.com/dlg7afigb/image/upload/v1674927318/Grabify/61A_XfXt-2L._SL1459__wtquqi.jpg",
      "15",
      "Aloo Samosa"
    ],
    [
      "Maggi",
      "https://res.cloudinary.com/dlg7afigb/image/upload/v1674927100/Grabify/81dpDHc95AL_qr5suo.jpg",
      "25",
      "Normal"
    ],
    [
      "Pani Puri",
      "https://res.cloudinary.com/dlg7afigb/image/upload/v1674934005/Grabify/download_4_ldb7to.jpg",
      "20",
      "Pani Puri"
    ],
    [
      "Chole Bhature",
      "https://res.cloudinary.com/dlg7afigb/image/upload/v1674934010/Grabify/chole-bhature-recipe_zxbywr.jpg",
      "90",
      "3 Bhature"
    ],
    [
      "Chilli Potato",
      "https://res.cloudinary.com/dlg7afigb/image/upload/v1674934012/Grabify/honey-chilli_u0yhbi.jpg",
      "50",
      "Aloo Chilli",
    ],
    [
      "Oreo Shake",
      "https://res.cloudinary.com/dlg7afigb/image/upload/v1674935159/Grabify/oreo_shake_lzs8q3.jpg",
      "70",
      "Milk Shake"
    ],
    [
      "Veg  Patty Roll",
      "https://res.cloudinary.com/dlg7afigb/image/upload/v1674934019/Grabify/Kolkata_egg_roll_djgyzk.jpg",
      "50",
      "Vegetarian"
    ],
    [
      "Veg Fried Rice",
      "https://res.cloudinary.com/dlg7afigb/image/upload/v1674934023/Grabify/download_2_liemhq.jpg",
      "50",
      "Fried RIce"
    ],
    [
      "Veg Chowmein",
      "https://res.cloudinary.com/dlg7afigb/image/upload/v1674934028/Grabify/download_1_v5bpr6.jpg",
      "50",
      "Vegetarian"
    ],
    [
      "French Fries",
      "https://res.cloudinary.com/dlg7afigb/image/upload/v1674934293/Grabify/frenchfry_ewzixk.jpg",
      "70",
      "Small"
    ],
    [
      "Pasta",
      "https://res.cloudinary.com/dlg7afigb/image/upload/v1674934244/Grabify/pasta_y7othr.jpg",
      "50",
      "Chinese"
    ],
    [
      "Bread Pakoda",
      "https://res.cloudinary.com/dlg7afigb/image/upload/v1674934572/Grabify/breadpakoda_kjwhum.jpg",
      "20",
      "Aloo Bread"
    ],
    [
      "Omlet",
      "https://res.cloudinary.com/dlg7afigb/image/upload/v1674934519/Grabify/omlet_j0vmjv.jpg",
      "30",
      "Double"
    ],
    [
      "Burger",
      "https://res.cloudinary.com/dlg7afigb/image/upload/v1674934927/Grabify/burger-recipe-4_bmvblb.webp",
      "60",
      "Veg Burger"
    ],
    [
      "Lassi",
      "https://res.cloudinary.com/dlg7afigb/image/upload/v1674935034/Grabify/Lassi_c55gby.webp",
      "30",
      "Sweet Lassi"
    ],
    [
      "Chicken Wings",
      "https://res.cloudinary.com/dlg7afigb/image/upload/v1674936057/Grabify/download_6_o4xcjl.jpg",
      "100",
      "3pcs"
    ],
    [
      "Veg Nuggets",
      "https://res.cloudinary.com/dlg7afigb/image/upload/v1674936055/Grabify/download_7_kx4csy.jpg",
      "80",
      "10pcs",
    ],
    [
      "Fresh Lime",
      "https://res.cloudinary.com/dlg7afigb/image/upload/v1674936066/Grabify/91007fd507aa9b78e9c76b779d787f9c_zhm0xg.jpg",
      "20",
      "Salt"
    ],
    [
      "Cold Coffee",
      "https://res.cloudinary.com/dlg7afigb/image/upload/v1674936063/Grabify/download_5_etmfr5.jpg",
      "60",
      "Normal"
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
