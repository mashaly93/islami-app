import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami/Homescree.dart';
import 'package:islami/SuraDetails.dart';


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
        Suradetails.routeName: (context) {
          return  Suradetails();
        },
      }
      ,
      darkTheme: ThemeData.dark(),
    ),
  );
}
