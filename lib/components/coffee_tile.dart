import 'package:flutter/material.dart';
import 'package:sip_and_shop/models/coffee.dart';

class CoffeeTile extends StatelessWidget {
  final Coffee coffee;
  final IconData icon;
  final VoidCallback onPressed;
  const CoffeeTile({super.key, required this.coffee, required this.icon, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(12),
      ),
      padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 10),
      margin: const EdgeInsets.only(bottom: 10),
      child: ListTile(
        title: Text(coffee.name),
        subtitle: Text(coffee.price),
        leading: Image.asset(coffee.imageSrc),
        trailing: IconButton(
          onPressed: onPressed,
          icon: Icon(icon),
        ),
      ),
    );
  }
}
