import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami/HadeethDetails.dart';
import 'package:islami/Homescree.dart';
import 'package:islami/SuraDetails.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'l10n/app_localizations.dart';




void main() {
  runApp(
    MaterialApp( locale: Locale('ar'),
      title: 'Localizations Sample App',
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      scrollBehavior: MaterialScrollBehavior(),
      theme: ThemeData.light(),

      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (context) {
          return HomeScreen();
        },
        Suradetails.routeName: (context) {
          return Suradetails();
        },
        Hadeethdetails.routeName: (context) {
          return Hadeethdetails();
        }
        ,

      }
      ,
      darkTheme: ThemeData.dark(),
    ),
  );
}
