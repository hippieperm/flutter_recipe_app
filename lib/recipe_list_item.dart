import 'package:flutter/material.dart';

class RecipeListItem extends StatelessWidget {
  final String path;
  final String title;

  const RecipeListItem({
    super.key,
    required this.path,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(path),
          Text(
            title,
            style: TextStyle(fontSize: 20),
          ),
          Text(
            "Have you ever made your own $title? Once you've tried a homemade Coffee, you'll never go back.",
            style: TextStyle(fontSize: 12),
          )
        ],
      ),
    );
  }
}
