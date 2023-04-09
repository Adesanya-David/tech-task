import 'dart:convert';

List<Ingredient> ingredientFromJson(String str) =>
    List<Ingredient>.from(json.decode(str).map((x) => Ingredient.fromJson(x)));

String ingredientToJson(List<Ingredient> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Ingredient {
  Ingredient({
    required this.title,
    required this.useBy,
  });

  String title;
  DateTime useBy;

  factory Ingredient.fromJson(Map<String, dynamic> json) => Ingredient(
        title: json["title"],
        useBy: DateTime.parse(json["use-by"]),
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "use-by":
            "${useBy.year.toString().padLeft(4, '0')}-${useBy.month.toString().padLeft(2, '0')}-${useBy.day.toString().padLeft(2, '0')}",
      };
}
