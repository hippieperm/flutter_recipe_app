import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_recipe_app/recipe_list_item.dart';
import 'package:flutter_recipe_app/recipe_menu.dart';
import 'package:flutter_recipe_app/recipe_title.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'NotoSansKR'),
      home: const RecipePage(),
    );
  }
}

class RecipePage extends StatelessWidget {
  const RecipePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          const Icon(
            CupertinoIcons.search,
            size: 30,
          ),
          const SizedBox(width: 15),
          const Icon(
            CupertinoIcons.heart,
            size: 30,
            color: Colors.red,
          ),
          const SizedBox(width: 15),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [
            const RecipeTitle(),
            const RecipeMenu(),
            const RecipeListItem(
              path: 'assets/images/coffee.jpg',
              title: 'Made Coffee',
            ),
            const RecipeListItem(
              path: 'assets/images/burger.jpg',
              title: 'Made Bugger',
            ),
            const RecipeListItem(
              path: 'assets/images/pizza.jpg',
              title: 'Made Pizza',
            ),
          ],
        ),
      ),
    );
  }
}
