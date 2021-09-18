import 'package:drink_n_chill/pages/drink_pages/drink_header.dart';
import 'package:drink_n_chill/pages/drink_pages/list_w_title.dart';
import 'package:drink_n_chill/size_config.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Column(
      // crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 1,
          child: DrinkHeader(
            name: 'Mango Mojito',
            image:
                'https://www.thecocktaildb.com/images/media/drink/wfqmgm1630406820.jpg',
          ),
        ),
        SizedBox(
          height: SizeConfig.screenHeight * 0.03,
        ),
        Expanded(
          flex: 1,
          child: SingleChildScrollView(
            child: SizedBox(
              width: SizeConfig.screenWidth * 0.8,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Ingredient',
                    style: GoogleFonts.lato(
                      textStyle: TextStyle(fontSize: 20),
                    ),
                  ),
                  SizedBox(
                    height: SizeConfig.screenHeight * 0.03,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ListwTitle(
                          title: 'Alcohol:',
                          items: ['2 oz White rum', '3 Mint leaves']),
                      SizedBox(width: SizeConfig.screenWidth * 0.30),
                      ListwTitle(
                        title: 'Garnish:',
                        items: [
                          'Mint sprig',
                          'Lime wheel',
                          'Passionfruit',
                        ],
                      ),
                    ],
                  ),
                  ListwTitle(
                    title: 'Juice:',
                    items: [
                      '2/4 oz Fresh lime juice',
                      '1/4 oz Passionfruit juice',
                      '1/2 oz Simple syrup',
                      'Club soda',
                      'Club soda',
                      'Club soda',
                      'Club soda',
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: Center(
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.orange),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      SizeConfig.defaultSize * 2.50,
                    ),
                  ),
                ),
              ),
              onPressed: () {},
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 14),
                child: Text(
                  'Start mixing',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
