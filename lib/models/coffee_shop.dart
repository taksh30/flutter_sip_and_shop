import 'package:flutter/material.dart';
import 'package:sip_and_shop/models/coffee.dart';

class CoffeeShop extends ChangeNotifier {
  final List<Coffee> _coffeeShop = [
    Coffee(
      name: 'Latte',
      price: '₹ 395',
      imageSrc: 'assets/latte.png',
    ),
    Coffee(
      name: 'Long Black Coffee',
      price: '₹ 295',
      imageSrc: 'assets/black_coffee.png',
    ),
    Coffee(
      name: 'Espresso',
      price: '₹ 250',
      imageSrc: 'assets/espresso.png',
    ),
    Coffee(
      name: 'Iced Coffee',
      price: '₹ 100',
      imageSrc: 'assets/ice_coffee.png',
    ),
  ];

  final List<Coffee> _userCart = [];

  List<Coffee> get coffeeShop => _coffeeShop;

  List<Coffee> get userCart => _userCart;

  void addItemToCart(Coffee coffee) {
    _userCart.add(coffee);
    notifyListeners();
  }

  void removeItemFromCart(Coffee coffee) {
    _userCart.remove(coffee);
    notifyListeners();
  }
}
