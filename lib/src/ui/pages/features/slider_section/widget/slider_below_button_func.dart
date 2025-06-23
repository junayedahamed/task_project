import 'package:flutter/material.dart';

class SliderBelowButtonFunc extends ChangeNotifier {
  int index = 0;
  void change(int currindex) {
    index = currindex;
    notifyListeners();
  }
}
