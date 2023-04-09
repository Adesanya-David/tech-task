import 'package:get/get.dart';
import '../model/ingredient.dart';
import '../model/recipe.dart';
import '../repository/recipe_api_service.dart';
import 'ingredients_controller.dart';

class RecipeController extends GetxController {
  final RecipeApiService _recipeApiService = Get.find();
  final IngredientsController _ingredientsController = Get.find();

  final _recipes = <Recipe>[].obs;
  List<Recipe> get recipes => _recipes;

  Future<void> getRecipes(List<String> ingredientTitles) async {
    final List<Ingredient> ingredients = _ingredientsController.ingredients
        .where((ingredient) => ingredientTitles.contains(ingredient.title))
        .toList();

    _recipes.assignAll(await _recipeApiService.getRecipes(ingredients));
  }
}
