import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class provider extends ChangeNotifier {
  ThemeMode mode = ThemeMode.light;
  changmode(ThemeMode thememode){
    mode=thememode;
    notifyListeners();
  }

}
