import 'package:drink_n_chill/pages/drink_pages/body.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Body(),
        backgroundColor: Colors.black,
      ),
      theme: ThemeData.dark(),
    );
  }
}
