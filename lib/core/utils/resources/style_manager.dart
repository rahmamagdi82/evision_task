import 'package:evision_task/gen/fonts.gen.dart';
import 'package:flutter/material.dart';

import 'font_manager.dart';

class FontStyles{

// regular style

  static TextStyle getRegularStyle({
    double fontSize=FontSize.s12,
  }){
    return TextStyle(
      fontFamily: FontFamily.poppins,
      fontSize: fontSize,
      fontWeight: FontWeightManager.regular,
    );
  }

// medium style

  static TextStyle getMediumStyle({
    double fontSize=FontSize.s20,
  }){
    return TextStyle(
      fontFamily: FontFamily.poppins,
      fontSize: fontSize,
      fontWeight: FontWeightManager.medium,
    );
  }

// bold style

  static TextStyle getBoldStyle(
      {double fontSize = FontSize.s20,}) {
    return TextStyle(
      fontFamily: FontFamily.poppins,
      fontSize: fontSize,
      fontWeight: FontWeightManager.bold,
    );
  }

// semiBold style

  static TextStyle getSemiBoldStyle(
      {double fontSize = FontSize.s18,}) {
    return TextStyle(
      fontFamily: FontFamily.poppins,
      fontSize: fontSize,
      fontWeight: FontWeightManager.semiBold,
    );
  }
}