import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tech_task/features/core/repository/recipe_api_service.dart';

import 'features/core/controller/ingredients_controller.dart';
import 'features/core/controller/recipe_controller.dart';
import 'features/presentation/home.dart';

void main() {
  Get.put(IngredientsController());
  Get.put(RecipeApiService());
  Get.put(RecipeController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: const HomePage(),
    );
  }
}
