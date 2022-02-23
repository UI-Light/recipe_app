import 'package:flutter/material.dart';
import 'package:recipe_app/ui/shared/menu.dart';

class ScrollableMenu extends StatelessWidget {
  final int selected;
  final Function(int)
      selectMenu; //here we are not calling the method...we are only defining it as a property of our class hence no parenthesis after 'selectMenu
  const ScrollableMenu(
      {Key? key, required this.selected, required this.selectMenu})
      : super(key: key);

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
