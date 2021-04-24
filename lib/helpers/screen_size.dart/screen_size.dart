import 'package:flutter/widgets.dart'
    show BuildContext, MediaQuery, MediaQueryData, Orientation;

class Screen {
  static double? width;
  static double? height;
  static double? defaultSize;
  static Orientation? orientation;

  void init(BuildContext context) {
    MediaQueryData? _mediaQueryData = MediaQuery.maybeOf(context);
    width = _mediaQueryData?.size.width;
    height = _mediaQueryData?.size.height;
    orientation = _mediaQueryData?.orientation;
  }
}

// Get the proportionate height as per screen size
double getProportionateScreenHeight(double inputHeight) {
  double? screenHeight = Screen.height;
  // 812 is the layout height that designer use
  return (inputHeight / 812.0) * screenHeight!;
}

// Get the proportionate height as per screen size
double getProportionateScreenWidth(double inputWidth) {
  double? screenWidth = Screen.width;
  // 375 is the layout width that designer use
  return (inputWidth / 375.0) * screenWidth!;
}
