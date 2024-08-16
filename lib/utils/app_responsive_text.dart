import 'package:flutter/material.dart';

double getResponsiveFontSize(
    {required double fontSize, required BuildContext context}) {
  double scaleFactor = getScaleFactor(context);
  double respfontSize = scaleFactor * fontSize;
  double lowerLimit = fontSize * .8;
  double upperLimit = fontSize * .2;
  return respfontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(BuildContext context) {
  double width = MediaQuery.sizeOf(context).width;
  if (width < 600) {
    return width / 400;
  } else if (width < 900) {
    return width / 700;
  } else {
    return width / 1000;
  }
}
