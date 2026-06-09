import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami/HadeethDetails.dart';
import 'package:islami/Homescree.dart';
import 'package:islami/SuraDetails.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:islami/provider.dart';
import 'package:provider/provider.dart';
import 'l10n/app_localizations.dart';




void main() {

  runApp(
    ChangeNotifierProvider(
      create: (context) => Myprovider(),
      child: Myapp(),
    ),
  );
}
class Myapp extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<Myprovider>(context);
    return MaterialApp( locale: Locale(provider.local),
      title: 'Localizations Sample App',
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      scrollBehavior: MaterialScrollBehavior(),
      themeMode: provider.mode,

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
    );
  }
}

