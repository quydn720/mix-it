import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DrinkHeader extends StatelessWidget {
  final String image;
  final String name;

  const DrinkHeader({
    required this.image,
    required this.name,
  });
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomLeft,
      children: [
        Image.network(
          image,
          height: 350,
          width: double.infinity,
          fit: BoxFit.fitWidth,
        ),
        Container(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              name,
              style: GoogleFonts.lato(
                textStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                ),
              ),
            ),
          ),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [
                Colors.black87,
                Colors.transparent,
              ],
            ),
          ),
        ),
      ],
    );
  }
}
