import 'package:flutter/material.dart';
import 'package:recipe_app/ui/views/bookmark_view.dart';
import 'package:recipe_app/ui/views/cart_view.dart';
import 'package:recipe_app/ui/views/foods_view.dart';
import 'package:recipe_app/ui/views/profile_view.dart';

class Indexview extends StatefulWidget {
  const Indexview({Key? key}) : super(key: key);

  @override
  _IndexviewState createState() => _IndexviewState();
}

class _IndexviewState extends State<Indexview> {
  PageController pagesController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: pagesController,
        children: const [
          FoodsView(),
          BookmarkView(),
          CartView(),
          ProfileView(),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          margin: const EdgeInsets.only(left: 30.0, right: 30.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                onPressed: () {
                  pagesController.jumpToPage(0);
                },
                iconSize: 25.0,
                icon: const Icon(
                  Icons.home_filled,
                  color: Colors.grey,
                ),
              ),
              IconButton(
                onPressed: () {
                  pagesController.jumpToPage(1);
                },
                iconSize: 25.0,
                icon: const Icon(
                  Icons.bookmark,
                  color: Colors.grey,
                ),
              ),
              IconButton(
                onPressed: () {
                  pagesController.jumpToPage(2);
                },
                iconSize: 25.0,
                icon: const Icon(
                  Icons.shopping_bag,
                  color: Colors.grey,
                ),
              ),
              IconButton(
                onPressed: () {
                  pagesController.jumpToPage(3);
                },
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
    );
  }
}
