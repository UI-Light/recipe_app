import 'package:recipe_app/models/ingredients.dart';

class Recipe {
  final String nameOfFood;
  final int ingredientCount;
  final String image;
  final int cookingTime;
  final List<Ingredient> ingredients;
  Recipe(
      {required this.nameOfFood,
      required this.ingredientCount,
      required this.cookingTime,
      required this.image,
      required this.ingredients});
}
