import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:recipe_app/models/ingredients.dart';
import 'package:recipe_app/models/recipe.dart';
import 'package:recipe_app/ui/shared/recipe_card.dart';
import 'package:recipe_app/ui/shared/scrollable_menu.dart';

class FoodsView extends StatefulWidget {
  const FoodsView({Key? key}) : super(key: key);

  @override
  State<FoodsView> createState() => _FoodsViewState();
}

class _FoodsViewState extends State<FoodsView> {
  final List<Recipe> foods = [
    Recipe(
        nameOfFood: 'Salmon Sushi Matcha',
        ingredientCount: 1,
        cookingTime: 40,
        image: 'asset/sushi-dinner.jpg',
        ingredients: [
          Ingredient(
              ingredientName: 'Salmon ',
              measurement: '1 salmon',
              ingredientImage: 'asset/sushi-dinner.jpg')
        ]),
    Recipe(
        nameOfFood: 'Sushi',
        ingredientCount: 5,
        cookingTime: 90,
        image: 'asset/sushi.jpg',
        ingredients: [
          Ingredient(
              ingredientName: 'Rice',
              measurement: '2 cups',
              ingredientImage: 'asset/matcha.jpg'),
          Ingredient(
              ingredientName: 'Vinegar',
              measurement: '2 tablespoons',
              ingredientImage: 'asset/matcha.jpg'),
          Ingredient(
              ingredientName: 'Avocado',
              measurement: '1 avocado',
              ingredientImage: 'asset/matcha.jpg'),
          Ingredient(
              ingredientName: 'Salmon',
              measurement: '1 Salmon',
              ingredientImage: 'asset/matcha.jpg'),
          Ingredient(
              ingredientName: 'Seaweed',
              measurement: 'A pack',
              ingredientImage: 'asset/matcha.jpg'),
        ]),
    Recipe(
        nameOfFood: 'Beef Burger with milkshakes',
        ingredientCount: 5,
        cookingTime: 15,
        image: 'asset/burger.jpg',
        ingredients: [
          Ingredient(
              ingredientName: 'Buns',
              measurement: '2 buns',
              ingredientImage: 'asset/matcha.jpg'),
          Ingredient(
              ingredientName: 'Minced Beef',
              measurement: '1 kg',
              ingredientImage: 'asset/matcha.jpg'),
          Ingredient(
              ingredientName: 'Cheese',
              measurement: '',
              ingredientImage: 'asset/matcha.jpg'),
          Ingredient(
              ingredientName: 'Tomatoes',
              measurement: '1',
              ingredientImage: 'asset/matcha.jpg'),
          Ingredient(
              ingredientName: 'Lettuce',
              measurement: '',
              ingredientImage: 'asset/matcha.jpg'),
        ]),
  ];
  int selected = 0; //here this selected = 0 is the index
  late Recipe selectedRecipe;
  void selectMenu(int index) {
    //selectMenu takes a parameter index and it sets that index to selected
    setState(() {
      selected = index;
      selectedRecipe = foods[index];
    });
  }

  @override
  void initState() {
    selectedRecipe = foods[0];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xfff2f4f8),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(30, 30, 30, 0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text(
                  'Find Best Recipe For Cooking',
                  textAlign: TextAlign.start,
                  style: GoogleFonts.roboto(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 25),
                Row(
                  children: [
                    Container(
                      height: 50,
                      width: 240,
                      padding: const EdgeInsets.all(13),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(14)),
                      ),
                      child: const TextField(
                        decoration: InputDecoration(
                          icon: Icon(Icons.search),
                          hintText: 'Search Destination',
                          hintStyle: TextStyle(
                            color: Color(0xff616161),
                            fontSize: 14,
                          ),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: const BoxDecoration(
                        color: Color(0x2618892e),
                        borderRadius: BorderRadius.all(
                          Radius.circular(14),
                        ),
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.tune),
                        color: const Color(0xff18892e),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 25),
                ScrollableMenu(
                  selected: selected,
                  selectMenu: (selectedIndex) {
                    selectMenu(selectedIndex);
                  },
                ),
                const SizedBox(height: 25),
                RecipeCard(recipe: selectedRecipe),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          child: Container(
            margin: const EdgeInsets.only(left: 30.0, right: 30.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  onPressed: () {},
                  iconSize: 25.0,
                  icon: const Icon(
                    Icons.home_filled,
                    color: Colors.grey,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  iconSize: 25.0,
                  icon: const Icon(
                    Icons.bookmark,
                    color: Colors.grey,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  iconSize: 25.0,
                  icon: const Icon(
                    Icons.shopping_bag,
                    color: Colors.grey,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  iconSize: 25.0,
                  icon: const Icon(
                    Icons.person,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
