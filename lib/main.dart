import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami/Homescree.dart';

void main() {
  runApp(
    MaterialApp(
      theme:ThemeData.light(),

      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (context) {
          return HomeScreen();
        },
      },
      darkTheme: ThemeData.dark(),
    ),
  );
}
