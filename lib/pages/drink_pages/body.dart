import 'package:drink_n_chill/model/drink.dart';
import 'package:drink_n_chill/pages/drink_pages/drink_header.dart';
import 'package:drink_n_chill/pages/drink_pages/list_w_title.dart';
import 'package:drink_n_chill/services/networking.dart';
import 'package:drink_n_chill/size_config.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Body extends StatefulWidget {
  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  late Future<DrinkModel> futureDrink;
  @override
  void initState() {
    futureDrink = NetworkHelper(
      baseUrl: 'https://www.thecocktaildb.com/api/json/v1/',
      apiKey: '1',
    ).fetchDrinkById(11027);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return FutureBuilder<DrinkModel>(
      future: futureDrink,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          final drink = snapshot.data!;
          return Column(
            children: [
              Expanded(
                flex: 1,
                child: DrinkHeader(
                  name: drink.drinkName,
                  image: drink.imageUrl,
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
                      padding: const EdgeInsets.symmetric(
                          horizontal: 40, vertical: 14),
                      child: Text(
                        'Start mixing',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          );
        } else if (snapshot.hasError) {
          return Text('${snapshot.error}');
        }
        return const CircularProgressIndicator();
      },
    );
  }
}
