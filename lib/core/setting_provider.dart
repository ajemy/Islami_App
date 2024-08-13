import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SettingProvider extends ChangeNotifier {
  String currentLang = "en";
  ThemeMode currentMode = ThemeMode.dark;
  int counter = 0;

  void changeLang(String newLang) {
    if(currentLang==newLang)return;
    currentLang = newLang;
    notifyListeners();
  }
  void changeMode(ThemeMode newMode){
    if(currentMode==newMode)return;
    currentMode=newMode;
    notifyListeners();
  }

  getBackgroundImage() {
    return currentMode == ThemeMode.light
        ? "assets/images/default_bg.png"
        : "assets/images/home_dark_bg.png";
  }

  bool isLight() {
    return currentMode == ThemeMode.light;
  }
  void increaseCount(){
    counter++;
  }
}
