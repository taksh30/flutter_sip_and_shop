import 'package:flutter/material.dart';
import 'package:sip_and_shop/components/bottom_nav_bar.dart';
import 'package:sip_and_shop/constants.dart';
import 'package:sip_and_shop/pages/cart_page.dart';
import 'package:sip_and_shop/pages/shop_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int selectedIndex = 0;
  void navigationBottomBar(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  List pages = [
    const ShopPage(),
    const CartPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) {
          navigationBottomBar(index);
        },
      ),
      body: pages[selectedIndex],
    );
  }
}
