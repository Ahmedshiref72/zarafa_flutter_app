import 'dart:ui';
import 'package:flutter/material.dart';

import 'color_manager.dart';
import 'font_manager.dart';

class CustomTextStyles {
  static TextStyle regular({double fontSize = FontSize.s22,}) {
    return TextStyle(
      fontFamily: FontConstants.fontFamilySegoe,
      fontSize: fontSize,
      fontWeight: FontWeightManager.regular,
      color: ColorManager. textDark,
    );
  }
  static TextStyle regularprimary({double fontSize = FontSize.s22,
   textDecoration = TextDecoration.none
  }) {
    return TextStyle(
      fontFamily: FontConstants.fontFamilySegoe,
      fontSize: fontSize,
      fontWeight: FontWeightManager.regular,
      color: ColorManager. primary,
      decoration: textDecoration,
    );
  }

  static TextStyle medium({double fontSize = FontSize.s16, }) {
    return TextStyle(
      fontFamily: FontConstants.fontFamilySegoe,
      fontSize: fontSize,
      fontWeight: FontWeightManager.medium,
      color: Colors.grey,
    );
  }
  static TextStyle mediumBack({double fontSize = FontSize.s16, }) {
    return TextStyle(
      fontFamily: FontConstants.fontFamilySegoe,
      fontSize: fontSize,
      fontWeight: FontWeightManager.regular,
      color: ColorManager. textDark,
    );
  }

  static TextStyle light({double fontSize = FontSize.s12, }) {
    return TextStyle(
      fontFamily: FontConstants.fontFamilySegoe,
      fontSize: fontSize,
      fontWeight: FontWeightManager.light,
      color: ColorManager. white,
    );
  }

  static TextStyle bold({double fontSize = FontSize.s16, }) {
    return TextStyle(
      fontFamily: FontConstants.fontFamilySegoe,
      fontSize: fontSize,
      fontWeight: FontWeightManager.bold,
      color: ColorManager. textDark,
    );
  }
  static TextStyle bold22({double fontSize = FontSize.s22, }) {
    return TextStyle(
      fontFamily: FontConstants.fontFamilySegoe,
      fontSize: fontSize,
      fontWeight: FontWeightManager.bold,
      color: ColorManager. textDark,
    );
  }

  static TextStyle semiBold({double fontSize = FontSize.s12, }) {
    return TextStyle(
      fontFamily: FontConstants.fontFamilySegoe,
      fontSize: fontSize,
      fontWeight: FontWeightManager.semiBold,
      color: ColorManager. textDark,
    );
  }
}
