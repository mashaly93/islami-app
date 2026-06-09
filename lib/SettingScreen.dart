import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami/MythemeData.dart';
import 'package:islami/l10n/app_localizations.dart';
import 'package:islami/provider.dart';
import 'package:provider/provider.dart';

class Settingscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<Myprovider>(context);
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(provider.mode == ThemeMode.light? 'assets/images/background.png':
            'assets/images/dark_bg.png'),
            fit: BoxFit.fill,
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              Text(
                AppLocalizations.of(context)!.islami,
                style: GoogleFonts.elMessiri(
                  fontSize: 25,
                  color: provider.mode == ThemeMode.light?Colors.black:Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Align(
                  alignment: AlignmentGeometry.centerLeft,
                  child: Column(
                    children: [
                      Text(
                        'Languages',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          color: provider.mode == ThemeMode.light?Colors.black:Colors.yellow
                        ),
                      ),
                      SizedBox(height: 15),
                      ElevatedButton(

                        style: ButtonStyle(
                          iconColor: WidgetStateColor.transparent,
                        ),
                        onPressed: () {
                          showModalBottomSheet(

                            shape: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            context: context,
                            builder: (context) {
                              return Container(
                                height: 200,
                                padding: const EdgeInsets.all(20),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        provider.local == 'en'?
                                            Icon(Icons.done):
                                            SizedBox.shrink(),
                                        InkWell(onTap: () {
                                          provider.changeLang('en');
                                          Navigator.pop(context);
                                        },
                                          child: Text(
                                            'English',
                                            style: TextStyle(fontWeight: FontWeight.bold,
                                                color: provider.mode == ThemeMode.light?Colors.black:Colors.yellow

                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        provider.local == 'ar'?
                                        Icon(Icons.done):
                                        SizedBox.shrink(),

                                        InkWell(onTap:
                                          () {
                                            provider.changeLang('ar');
                                            Navigator.pop(context);
                                          },
                                          child: Text(
                                            'Arabic',
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black,

                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              );
                            },
                          );
                        },
                        child: Text(
                          provider.local == 'en'?'English':'عربي',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color:  provider.mode == ThemeMode.light?Color(0XFFB7935F):
                            Colors.white,

                          ),
                        ),
                      ),
                      SizedBox(height: 15),
                      Text(
                        'Mode',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                            color: provider.mode == ThemeMode.light?Colors.black:Colors.yellow
                        ),
                      ),
                      SizedBox(height: 15),
                      ElevatedButton(
                        style: ButtonStyle(
                          iconColor: WidgetStateColor.transparent,
                        ),
                        onPressed: () {

                          showModalBottomSheet(
                            shape: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            context: context,
                            builder: (context) {
                              return Container(
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        provider.mode == ThemeMode.light?
                                        Icon(Icons.done,color: Color(0XFFB7935F),size: 17,):
                                        SizedBox.shrink(),
                                        InkWell(onTap: () {
                                          provider.chageMode(ThemeMode.light);
                                          Navigator.pop(context);
                                        },
                                          child: Text(
                                            'Light',
                                            style: TextStyle(fontWeight: FontWeight.bold,
                                              color:  provider.mode == ThemeMode.light?Color(0XFFB7935F):
                                              Colors.white,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        provider.mode == ThemeMode.dark?
                                        Icon(Icons.done,color: Colors.white,size: 17,):
                                        SizedBox.shrink(),

                                        InkWell(
                                          onTap: () {
                                            provider.chageMode(ThemeMode.dark);
                                            Navigator.pop(context);
                                          },
                                          child: Text(

                                            'Dark',
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color:  provider.mode == ThemeMode.light?Color(0XFFB7935F):
                                              Colors.white,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                height: 200,
                                padding: const EdgeInsets.all(20),
                              );
                            },
                          );
                        },

                        child: Text(
                          provider.mode == ThemeMode.light?
                          'Light Mode':'Dark Mode',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color:  provider.mode == ThemeMode.light?Color(0XFFB7935F):
                            Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
