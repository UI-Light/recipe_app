import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:recipe_app/models/ingredients.dart';

class RecipeList extends StatelessWidget {
  final Ingredient ingredient;
  const RecipeList({
    Key? key,
    required this.ingredient,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      alignment: Alignment.center,
      height: MediaQuery.of(context).size.height / 10,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color(0x26b3bbd2),
      ),
      child: ListTile(
        leading: Image(
          image: AssetImage(ingredient.ingredientImage),
          height: 50,
          width: 50,
        ),
        title: Text(
          ingredient.ingredientName,
          style: GoogleFonts.roboto(
            fontWeight: FontWeight.bold,
          ),
        ),
        trailing: Text(
          ingredient.measurement,
          style: const TextStyle(color: Colors.grey),
        ),
      ),
    );
  }
}
