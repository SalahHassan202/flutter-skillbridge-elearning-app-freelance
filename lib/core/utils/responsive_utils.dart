import 'package:flutter/material.dart';

class ResponsiveUtils {
  static double getWidth(BuildContext context, double percentage) {
    return MediaQuery.of(context).size.width * (percentage / 100);
  }

  static double getHeight(BuildContext context, double percentage) {
    return MediaQuery.of(context).size.height * (percentage / 100);
  }

  static bool isSmallPhone(BuildContext context) {
    return MediaQuery.of(context).size.width < 380;
  }

  static bool isMediumPhone(BuildContext context) {
    return MediaQuery.of(context).size.width >= 380 &&
        MediaQuery.of(context).size.width < 450;
  }

  static bool isLargePhone(BuildContext context) {
    return MediaQuery.of(context).size.width >= 450;
  }
}
