import 'package:flutter/material.dart';

class SizeUtils {
  static double fullDoubleWidth(BuildContext context) {
    return double.infinity;
  }

  static double fullWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  static double fullHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }
}
