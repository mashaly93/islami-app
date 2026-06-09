import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Myprovider extends ChangeNotifier{
  String local = 'en';
  ThemeMode mode = ThemeMode.light;
  void changeLang(String value){
    local = value;
    notifyListeners();
  }
  void chageMode(ThemeMode theme){
    mode =theme;
    notifyListeners();
  }

}