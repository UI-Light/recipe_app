import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:recipe_app/ui/shared/recipe_list.dart';

class RecipeView extends StatelessWidget {
  const RecipeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xfff2f4f8),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(30, 35, 30, 0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(
                    Icons.arrow_back,
                    color: Colors.grey,
                  ),
                  Text(
                    'Salmon Sushi',
                    style: GoogleFonts.roboto(
                        fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  const Icon(
                    Icons.more_horiz,
                    color: Colors.grey,
                  ),
                ],
              ),
              const SizedBox(height: 30),
              Container(
                height: MediaQuery.of(context).size.height / 4,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  image: const DecorationImage(
                    image: AssetImage('asset/sushi-dinner.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Ingredients (12)',
                    style: GoogleFonts.roboto(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  Container(
                    height: 40,
                    width: 70,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        gradient: const LinearGradient(
                          begin: Alignment.bottomLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Color(0xff18892e),
                            Color(0x8018892e),
                          ],
                        )),
                    child: const Center(
                      child: Text(
                        '1 Serving',
                        style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              Expanded(
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: const [
                      RecipeList(
                        ingredientName: 'Matcha',
                        measurement: '1 teaspoon',
                        ingredientImage: AssetImage('asset/matcha.jpg'),
                      ),
                      SizedBox(height: 10),
                      RecipeList(
                        ingredientName: 'Matcha',
                        measurement: '1 teaspoon',
                        ingredientImage: AssetImage('asset/matcha.jpg'),
                      ),
                      SizedBox(height: 10),
                      RecipeList(
                        ingredientName: 'Matcha',
                        measurement: '1 teaspoon',
                        ingredientImage: AssetImage('asset/matcha.jpg'),
                      ),
                      SizedBox(height: 10),
                      RecipeList(
                        ingredientName: 'Matcha',
                        measurement: '1 teaspoon',
                        ingredientImage: AssetImage('asset/matcha.jpg'),
                      ),
                      SizedBox(height: 10),
                      RecipeList(
                        ingredientName: 'Matcha',
                        measurement: '1 teaspoon',
                        ingredientImage: AssetImage('asset/matcha.jpg'),
                      ),
                      SizedBox(height: 10),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
