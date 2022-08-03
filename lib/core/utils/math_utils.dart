import 'package:flutter/material.dart';

Size size = WidgetsBinding.instance!.window.physicalSize /
    WidgetsBinding.instance!.window.devicePixelRatio;

///This method is used to set padding/margin (for the left and Right side) & width of the screen or widget according to the Viewport width.
double getHorizontalSize(double px) {
  return px * (size.width / 375);
}

///This method is used to set padding/margin (for the left and Right side) & width of the screen or widget according to the Viewport width.
double getHorizontalSize_1(double px) {
  return px * (size.width / 359);
}

///This method is used to set padding/margin (for the top and bottom side) & height of the screen or widget according to the Viewport height.
double getVerticalSize(double px) {
  num statusBar = MediaQueryData.fromWindow(WidgetsBinding.instance!.window)
      .viewPadding
      .top;
  num screenHeight = size.height - statusBar;
  return px * (screenHeight / 779);
}

///This method is used to set padding/margin (for the top and bottom side) & height of the screen or widget according to the Viewport height.
double getVerticalSize_1(double px) {
  num statusBar = MediaQueryData.fromWindow(WidgetsBinding.instance!.window)
      .viewPadding
      .top;
  num screenHeight = size.height - statusBar;
  return px * (screenHeight / 812);
}

///This method is used to set text font size according to Viewport
double getFontSize(double px) {
  var height = getVerticalSize(px);
  var width = getHorizontalSize(px);
  if (height < width) {
    return height.toInt().toDouble();
  } else {
    return width.toInt().toDouble();
  }
}

///This method is used to set smallest px in image height and width
double getSize(double px) {
  var height = getVerticalSize(px);
  var width = getHorizontalSize(px);
  if (height < width) {
    return height.toInt().toDouble();
  } else {
    return width.toInt().toDouble();
  }
}

///This method is used to set padding/margin (for the left and Right side) & width of the screen or widget according to the Viewport width.
double getHorizontalSize_HomePageScreen(double px) {
  return px * (size.width / 360);
}

///This method is used to set padding/margin (for the top and bottom side) & height of the screen or widget according to the Viewport height.
double getVerticalSize_HomePageScreen(double px) {
  num statusBar = MediaQueryData.fromWindow(WidgetsBinding.instance!.window)
      .viewPadding
      .top;
  num screenHeight = size.height - statusBar;
  return px * (screenHeight / 767);
}

///This method is used to set text font size according to Viewport
double getFontSize_HomePageScreen(double px) {
  var height = getVerticalSize_HomePageScreen(px);
  var width = getHorizontalSize_HomePageScreen(px);
  if (height < width) {
    return height.toInt().toDouble();
  } else {
    return width.toInt().toDouble();
  }
}

///This method is used to set smallest px in image height and width
double getSize_HomePageScreen(double px) {
  var height = getVerticalSize_HomePageScreen(px);
  var width = getHorizontalSize_HomePageScreen(px);
  if (height < width) {
    return height.toInt().toDouble();
  } else {
    return width.toInt().toDouble();
  }
}





///This method is used to set padding/margin (for the left and Right side) & width of the screen or widget according to the Viewport width.
double getHorizontalSize_HomePageScreenModel2(double px) {
  return px * (size.width / 375);
}

///This method is used to set padding/margin (for the top and bottom side) & height of the screen or widget according to the Viewport height.
double getVerticalSize_HomePageScreenModel2(double px) {
  num statusBar = MediaQueryData.fromWindow(WidgetsBinding.instance!.window)
      .viewPadding
      .top;
  num screenHeight = size.height - statusBar;
  return px * (screenHeight / 812);
}

///This method is used to set text font size according to Viewport
double getFontSize_HomePageScreenModel2(double px) {
  var height = getVerticalSize_HomePageScreenModel2(px);
  var width = getHorizontalSize_HomePageScreenModel2(px);
  if (height < width) {
    return height.toInt().toDouble();
  } else {
    return width.toInt().toDouble();
  }
}

///This method is used to set smallest px in image height and width
double getSize_HomePageScreenModel2(double px) {
  var height = getVerticalSize_HomePageScreenModel2(px);
  var width = getHorizontalSize_HomePageScreenModel2(px);
  if (height < width) {
    return height.toInt().toDouble();
  } else {
    return width.toInt().toDouble();
  }
}

///This method is used to set padding responsively
EdgeInsetsGeometry getPadding({
  double? all,
  double? left,
  double? top,
  double? right,
  double? bottom,
}) {
  if (all != null) {
    left = all;
    top = all;
    right = all;
    bottom = all;
  }
  return EdgeInsets.only(
    left: getHorizontalSize(
      left ?? 0,
    ),
    top: getVerticalSize(
      top ?? 0,
    ),
    right: getHorizontalSize(
      right ?? 0,
    ),
    bottom: getVerticalSize(
      bottom ?? 0,
    ),
  );
}

///This method is used to set margin responsively
EdgeInsetsGeometry getMargin({
  double? all,
  double? left,
  double? top,
  double? right,
  double? bottom,
}) {
  if (all != null) {
    left = all;
    top = all;
    right = all;
    bottom = all;
  }
  return EdgeInsets.only(
    left: getHorizontalSize(
      left ?? 0,
    ),
    top: getVerticalSize(
      top ?? 0,
    ),
    right: getHorizontalSize(
      right ?? 0,
    ),
    bottom: getVerticalSize(
      bottom ?? 0,
    ),
  );
}
