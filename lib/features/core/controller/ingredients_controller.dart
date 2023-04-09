import 'dart:convert';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';

import '../model/ingredient.dart';
import '../repository/recipe_api_service.dart';

class IngredientsController extends GetxController {
  var date = DateTime.now().obs;
  var ingredients = <Ingredient>[].obs;
  var searchText = ''.obs;
  var selectedIngredients = <Ingredient>[].obs;

  Future<void> getIngredients() async {
    final dateString = DateFormat('yyyy-MM-dd').format(date.value);
    final params = {'date': dateString};
    final uri = Uri.https('lb7u7svcm5.execute-api.ap-southeast-1.amazonaws.com',
        '/dev/ingredients', params);
    final response = await http.get(uri);

    if (response.statusCode == 200) {
      final List<dynamic> decodedJson = json.decode(response.body);
      ingredients.assignAll(
          decodedJson.map((json) => Ingredient.fromJson(json)).toList());
    } else {
      print('Error getting ingredients: ${response.statusCode}');
    }
  }

  void setSearchText(String text) {
    searchText.value = text;
  }

  void selectIngredient(Ingredient ingredient) {
    if (!selectedIngredients.contains(ingredient)) {
      selectedIngredients.add(ingredient);
    } else {
      selectedIngredients.remove(ingredient);
    }
  }

  bool isSelected(Ingredient ingredient) {
    return selectedIngredients.contains(ingredient);
  }

  // Future<void> getRecipes() async {
  //   final recipeApiService = Get.find<RecipeApiService>();
  //   final ingredients =
  //       selectedIngredients.map((ingredient) => ingredient.title).toList();
  //   final recipes = await recipeApiService.getRecipes(ingredients);
  //   if (recipes != null) {
  //     Get.toNamed('/recipes', arguments: recipes);
  //   }
  // }
}
