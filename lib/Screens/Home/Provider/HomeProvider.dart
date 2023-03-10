import 'package:flutter/material.dart';

class HomeProvider extends ChangeNotifier
{
  bool s1=false,s2=false,s3=false;

  void Chang1(bool value) {
    s1 = value;
    notifyListeners();
  }
  void Chang2(bool value) {
    s2 = value;
    notifyListeners();
  }
  void Chang3(bool value) {
    s3 = value;
    notifyListeners();
  }
}