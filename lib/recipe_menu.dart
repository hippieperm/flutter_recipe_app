import 'package:flutter/material.dart';

class RecipeMenu extends StatelessWidget {
  const RecipeMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Row(
        children: [
          menuItem(Icons.food_bank, 'ALL'),
          const SizedBox(width: 25),
          menuItem(Icons.emoji_food_beverage, 'Coffee'),
          const SizedBox(width: 25),
          menuItem(Icons.fastfood, 'Burger'),
          const SizedBox(width: 25),
          menuItem(Icons.local_pizza, 'Pizza'),
        ],
      ),
    );
  }

  Container menuItem(IconData icon, String text) {
    return Container(
      width: 60,
      height: 80,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black12),
        borderRadius: BorderRadius.circular(24),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 30,
            color: Colors.redAccent,
          ),
          const SizedBox(height: 5),
          Text(text)
        ],
      ),
    );
  }
}
