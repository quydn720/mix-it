import 'package:drink_n_chill/pages/drink_pages/drink_header.dart';
import 'package:drink_n_chill/pages/drink_pages/list_w_title.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      // crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DrinkHeader(
          name: 'Mango Mojito',
          image:
              'https://www.thecocktaildb.com/images/media/drink/wfqmgm1630406820.jpg',
        ),
        Expanded(
          // TODO: Should use MediaQuery for sizing
          child: SizedBox(
            width: 300,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Ingredient'),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ListwTitle(
                        title: 'Alcohol',
                        items: ['2 oz White rum', '3 Mint leaves']),
                    const SizedBox(width: 60.0),
                    ListwTitle(
                      items: [
                        'Mint sprig',
                        'Lime wheel',
                        'Passionfruit',
                      ],
                      title: 'Garnish',
                    ),
                  ],
                ),
                ListwTitle(
                  title: 'Juice',
                  items: [
                    '2/4 oz Fresh lime juice',
                    '1/4 oz Passionfruit juice',
                    '1/2 oz Simple syrup',
                    'Club soda',
                  ],
                ),
              ],
            ),
          ),
        ),
        Center(
          child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.orange),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            onPressed: () {},
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 14),
              child: Text(
                'Start mixing',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 10.0,
        )
      ],
    );
  }
}
