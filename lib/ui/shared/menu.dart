import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  final String text;
  final bool selected;
  final VoidCallback selectMenu;

  const Menu(
      {Key? key,
      required this.text,
      required this.selected,
      required this.selectMenu})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: selectMenu,
      child: Container(
        padding: const EdgeInsets.all(16),
        height: 50,
        width: 100,
        decoration: BoxDecoration(
          color: selected ? Colors.green : Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(text,
            textAlign: TextAlign.center,
            style: const TextStyle(color: Color(0xff616161))),
      ),
    );
  }
}
