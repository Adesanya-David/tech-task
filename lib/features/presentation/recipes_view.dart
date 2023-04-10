import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../core/controller/recipe_controller.dart';

class RecipesView extends StatelessWidget {
  final _controller = Get.find<RecipeController>();

  final String ingredient;

  RecipesView({super.key, required this.ingredient}) {
    _controller.getRecipes([ingredient]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recipes for $ingredient'),
      ),
      body: Obx(
        () => ListView.builder(
          itemCount: _controller.recipes.length,
          itemBuilder: (context, index) {
            final recipe = _controller.recipes[index];
            return ListTile(
              title: Text(recipe.title),
              subtitle: Text(recipe.ingredients.join(', ')),
            );
          },
        ),
      ),
    );
  }
}
