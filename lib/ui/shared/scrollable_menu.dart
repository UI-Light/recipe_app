import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:recipe_app/ui/shared/menu.dart';

class ScrollableMenu extends StatefulWidget {
  const ScrollableMenu({Key? key}) : super(key: key);

  @override
  _ScrollableMenuState createState() => _ScrollableMenuState();
}

class _ScrollableMenuState extends State<ScrollableMenu> {
  int selected = 0;
  void selectMenu(int index) {
    setState(() {
      selected = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Menu(
            text: 'All',
            selected: selected == 0,
            selectMenu: () {
              selectMenu(0);
            },
          ),
          const SizedBox(width: 15),
          Menu(
            text: 'Sushi',
            selected: selected == 1,
            selectMenu: () => selectMenu(1),
          ),
          const SizedBox(width: 15),
          Menu(
              text: 'Burger',
              selected: selected == 2,
              selectMenu: () => selectMenu(2)),
        ],
      ),
    );
  }
}
