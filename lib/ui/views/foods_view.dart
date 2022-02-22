import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:recipe_app/ui/shared/scrollable_menu.dart';
import 'package:recipe_app/ui/views/recipe_view.dart';

class FoodsView extends StatefulWidget {
  const FoodsView({Key? key}) : super(key: key);

  @override
  State<FoodsView> createState() => _FoodsViewState();
}

class _FoodsViewState extends State<FoodsView> {
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
                    child: const Expanded(
                      child: TextField(
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
              const ScrollableMenu(),
              const SizedBox(height: 25),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const RecipeView()),
                  );
                },
                child: Container(
                  height: MediaQuery.of(context).size.height / 2,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    image: const DecorationImage(
                      image: AssetImage('asset/sushi-dinner.jpg'),
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
                          'Salmon Sushi Matcha',
                          style: GoogleFonts.roboto(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 20),
                        const Text(
                          '12 Ingredients | 40 Mins',
                          textAlign: TextAlign.start,
                          style: TextStyle(fontSize: 14, color: Colors.white),
                        )
                      ],
                    ),
                  ),
                ),
              )
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
    ));
  }
}
