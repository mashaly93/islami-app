import 'package:flutter/material.dart';
import 'package:islami/MythemeData.dart';
import 'package:islami/RadioScreen.dart';
import 'package:islami/SebhaScreen.dart';
import 'package:islami/SettingScreen.dart';
import 'package:islami/hadethScreen.dart';

import 'quranScreen.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'HomeScreen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    List<Widget> tabs = [
      Radioscreen(),
      Sebhascreen(),
      Hadethscreen(),
      QuranScreen(),
      Settingscreen(),
    ];
    return Scaffold(

      body: tabs[index],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Mythemedata.primary,



        showSelectedLabels: true,
        selectedItemColor: Colors.black,


        currentIndex: index,
        onTap: (value) {
          index = value;

          setState(() {});
        },
        items: [
          BottomNavigationBarItem(
            icon: Image.asset('assets/images/icon_radio.png'),
            label: 'Radio',
             backgroundColor: Mythemedata.primary

          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/images/icon_sebha.png'),
            label: 'Sebha',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/images/icon_hadeth.png'),
            label: 'Hadeeth',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/images/icon_quran.png'),
            label: 'Quaran',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}
