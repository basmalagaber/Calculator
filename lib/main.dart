import 'package:flutter/material.dart';

import 'Calculator/calculator_screen.dart';
import 'Magazin/magazin_page.dart';
import 'XO/xo_game.dart';
import 'XO/xo_main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: XoMainScreen.routeName,
      routes: {
        XoMainScreen.routeName:(context) => XoMainScreen(),
        XoGame.routeName:(context) => XoGame(),
      },
    );
  }
}
