import 'package:drink_n_chill/size_config.dart';
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
          width: double.infinity,
          fit: BoxFit.fitWidth,
        ),
        Container(
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.symmetric(
              vertical: 16.0,
              horizontal: SizeConfig.screenWidth * 0.10,
            ),
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
                Colors.grey[900]!,
                Colors.transparent,
              ],
            ),
          ),
        ),
      ],
    );
  }
}
