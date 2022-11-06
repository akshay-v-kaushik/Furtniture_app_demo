import 'package:flutter/material.dart';

class SizeConfig {
  static late MediaQueryData _mqd;
  static late double screenWidth;
  static late double screenHeight;
  static double? defaultSize;
  static Orientation? orientation;

  void init(BuildContext context) {
    _mqd = MediaQuery.of(context);
    screenWidth = _mqd.size.width;
    screenHeight = _mqd.size.height;
    orientation = _mqd.orientation;
    defaultSize = orientation == Orientation.landscape
        ? screenHeight * 0.024
        : screenWidth * 0.024;
  }
}
