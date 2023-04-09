import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:tech_task/features/core/controller/ingredients_controller.dart';
import 'package:tech_task/features/core/controller/recipe_controller.dart';

import '../../const/const.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _dateController = TextEditingController();
  final _controller = Get.find<IngredientsController>();

  bool _isIngredientExpired(String ingredient) {
    final expirationDate = DateTime.parse(ingredient.split(',')[1]);
    return expirationDate.isBefore(DateTime.now());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Row(
              children: [
                Expanded(
                  child: Text(
                    "Recipe Finder",
                    style: Styles.headlineStyle.copyWith(color: Colors.teal),
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.shopping_bag,
                    color: Colors.black,
                  ),
                ),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.search,
                      color: Colors.black,
                    ))
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              'Please select preferred lunch date and click \'get ingredients\' button to show fridge\'s content',
              style: Styles.headlineStyle
                  .copyWith(color: Colors.teal, fontSize: 15),
            ),
            const SizedBox(
              height: 16,
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () async {
                    final date = await showDatePicker(
                      context: context,
                      initialDate: _controller.date.value,
                      firstDate: DateTime(2000),
                      lastDate: DateTime(2100),
                    );
                    if (date != null) {
                      _controller.date.value = date;
                      _controller.getIngredients();
                    }
                  },
                  child: Text(
                      'Date: ${DateFormat('yyyy-MM-dd').format(_controller.date.value)}'),
                ),
                const SizedBox(width: 90),
                ElevatedButton(
                  onPressed: _controller.getIngredients,
                  child: Text(
                    'Get Ingredients',
                    style: Styles.buttonTextStyle,
                  ),
                ),
              ],
            ),
            Divider(),
            Expanded(
              child: ListView.builder(
                itemCount: _controller.ingredients.length,
                itemBuilder: (context, index) {
                  final ingredient = _controller.ingredients[index];
                  return ListTile(
                    title: Text(ingredient.title),
                    subtitle: Text(
                        'Use by: ${DateFormat('yyyy-MM-dd').format(ingredient.useBy)}'),
                    // enabled: !ingredient.isExpired,
                    onTap: () {
                      // if (!ingredient.isExpired) {
                      //   Get.to(() => RecipesView(ingredient: ingredient.name));
                      // }
                    },
                  );
                },
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
