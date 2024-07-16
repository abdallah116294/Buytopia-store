import 'package:ecommerce_app/core/style/colors/dark_colors.dart';
import 'package:ecommerce_app/core/style/colors/light_colors.dart';
import 'package:ecommerce_app/core/style/theme/color_etensions.dart';
import 'package:ecommerce_app/core/style/theme/image_extensions.dart';
import 'package:flutter/material.dart';

ThemeData darkTheme() {
  return ThemeData(
    extensions:const <ThemeExtension<dynamic>>[MyColors.dark,MyImages.dark],
    scaffoldBackgroundColor: DarkColor.mainColor,
    useMaterial3: true,
  );
}

ThemeData lightTheme() {
 return ThemeData(
   extensions:const <ThemeExtension<dynamic>>[MyColors.light,MyImages.light],
    scaffoldBackgroundColor: LightColor.mainColor,
    useMaterial3: true,
  );
}
