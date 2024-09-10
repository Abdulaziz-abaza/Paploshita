import 'package:clean_arc/core/presentation/util/style/colors/color_dark.dart';
import 'package:clean_arc/core/presentation/util/style/colors/color_ligh.dart';
import 'package:clean_arc/core/presentation/util/style/fonts/font_family_helper.dart';
import 'package:clean_arc/core/presentation/util/style/theme/color_extintion.dart';
import 'package:flutter/material.dart';

ThemeData themeDark() {
  return ThemeData(
    scaffoldBackgroundColor: ColorsDark.mainColor,
    extensions: <ThemeExtension<dynamic>>[MyColors.dark,
      // MyAssets.dark
    ],
    useMaterial3: false,
    textTheme: TextTheme(
      displaySmall: TextStyle(
        fontSize: 14,
        color: ColorsDark.white,
        fontFamily: FontFamilyHelper.geLocalozedFontFamily(),
      ),
    ),
  );
}

ThemeData themeLight() {
  print(
      "FontFamilyHelper.geLocalozedFontFamily() ${FontFamilyHelper.geLocalozedFontFamily()}");
  return ThemeData(
    fontFamily: 'cairo',
    dialogTheme: DialogTheme(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(15))),
    ),
    appBarTheme: AppBarTheme(
        backgroundColor: ColorsLight.mainColor,
        elevation: 0,
        iconTheme: IconThemeData(color: ColorsLight.black)),
    scaffoldBackgroundColor: ColorsLight.mainColor,
    extensions: <ThemeExtension<dynamic>>[MyColors.light,
      // MyAssets.light
    ],
    useMaterial3: false,
    textTheme: TextTheme(
      displaySmall: TextStyle(
        fontSize: 14,
        color: ColorsLight.black,
        fontFamily: FontFamilyHelper.geLocalozedFontFamily(),
      ),
    ),
  );
}
