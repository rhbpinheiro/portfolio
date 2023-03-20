

import 'package:flutter/material.dart';

const mobileBreakpoint = 800;

const tabletBreakpoint = 1200;

extension SizeExtensions on BuildContext {
  //exemple  width: context.percentWidth(.6),
  double get screenWidth => MediaQuery.of(this).size.width;
  double get screenHeight => MediaQuery.of(this).size.height;

  double percentWidth(double percent) => screenWidth * percent;
  double percentHeight(double percent) => screenHeight * percent;
}

final Color backgroundHomePage = const Color(0xFF141316);

final Color colorGreyBorder = Color(0xFF989C9A);



final ButtonStyle hoverButton = ButtonStyle(
  textStyle:
      MaterialStateProperty.resolveWith<TextStyle>((Set<MaterialState> states) {
    if (states.contains(MaterialState.hovered)) {
      return const TextStyle(decoration: TextDecoration.underline);
    }
    return const TextStyle(decoration: TextDecoration.none);
  }),
  foregroundColor:
      MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states) {
    if (states.contains(MaterialState.hovered)) {
      return const Color(0XFF989C9A);
    }
    return const Color(0XFFFFFFFF);
  }),
);
