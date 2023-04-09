import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:tech_task/const/network/api_const.dart';

import '../model/ingredient.dart';
import '../model/recipe.dart';

class RecipeApiService {
  static const _baseUrl = ApiConst.baseUrl;

  Future<List<Recipe>> getRecipes(List<Ingredient> ingredients) async {
    final uri = Uri.parse(
        '$_baseUrl/recipes?ingredients=${ingredients.map((i) => i.title).join(',')}');
    final response = await http.get(uri);

    if (response.statusCode == 200) {
      final data = json.decode(response.body) as List<dynamic>;
      final recipes = data.map((r) => Recipe.fromJson(r)).toList();

      return recipes;
    } else {
      throw Exception('Failed to load recipes');
    }
  }
}
