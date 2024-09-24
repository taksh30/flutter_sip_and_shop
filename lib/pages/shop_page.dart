import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sip_and_shop/components/coffee_tile.dart';
import 'package:sip_and_shop/models/coffee.dart';
import 'package:sip_and_shop/models/coffee_shop.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  void addToCart(Coffee coffee) {
    Provider.of<CoffeeShop>(context, listen: false).addItemToCart(coffee);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<CoffeeShop>(
      builder: (context, value, child) => SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            children: [
              const Text(
                'How would you like your coffee?',
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(
                height: 25,
              ),
              Expanded(
                child: ListView.builder(
                    itemCount: value.coffeeShop.length,
                    itemBuilder: (context, index) {
                      Coffee eachCoffee = value.coffeeShop[index];
                      return CoffeeTile(
                        coffee: eachCoffee,
                        icon: Icons.add,
                        onPressed: () {
                          addToCart(eachCoffee);
                        },
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
