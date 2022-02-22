import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RecipeList extends StatelessWidget {
  final String ingredientName;
  final String measurement;
  final ingredientImage;
  const RecipeList(
      {Key? key,
      required this.ingredientName,
      required this.measurement,
      required this.ingredientImage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: MediaQuery.of(context).size.height / 10,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color(0x26b3bbd2),
      ),
      child: ListTile(
        leading: Image(
          image: ingredientImage,
          height: 50,
          width: 50,
        ),
        title: Text(
          ingredientName,
          style: GoogleFonts.roboto(
            fontWeight: FontWeight.bold,
          ),
        ),
        trailing: Text(
          measurement,
          style: const TextStyle(color: Colors.grey),
        ),
      ),
    );
  }
}
