import 'package:flutter/material.dart';
import 'package:recipe_app/models/recipe.dart';
import 'package:recipe_app/ui/views/recipe_view.dart';
import 'package:google_fonts/google_fonts.dart';

class RecipeCard extends StatelessWidget {
  final Recipe recipe;
  const RecipeCard({Key? key, required this.recipe}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => RecipeView(
                    recipe: recipe,
                  )),
        );
      },
      child: Container(
        height: MediaQuery.of(context).size.height / 2,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          image: DecorationImage(
            image: AssetImage(recipe.image),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Container(
                alignment: Alignment.topRight,
                decoration: const BoxDecoration(),
                child: const Icon(
                  Icons.bookmark,
                  size: 35,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 200),
              Text(
                recipe.nameOfFood,
                style: GoogleFonts.roboto(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 20),
              Text(
                '${recipe.ingredientCount} Ingredients | ${recipe.cookingTime} Mins',
                textAlign: TextAlign.start,
                style: const TextStyle(fontSize: 14, color: Colors.white),
              )
            ],
          ),
        ),
      ),
    );
  }
}
