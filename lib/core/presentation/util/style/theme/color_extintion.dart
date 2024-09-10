import 'package:clean_arc/core/utils_package/utils_package.dart';
import 'package:flutter/material.dart';

class MyColors extends ThemeExtension<MyColors> {
  const MyColors(
      {required this.mainColor,
      required this.redColor,
      required this.darkRedColor,
      required this.darkBlue,
      required this.greenColor,
      required this.pinkColor,
      required this.fillColor,
      required this.grayColor,
      required this.blueColor,
      required this.descriptionColor,
      required this.orangeColor,
      // required this.blueGreenDark,
      required this.primaryColor,
      required this.textColor,
      required this.hintColor,
      required this.borderColor,
      required this.navBarbg,
      required this.navBarSelectedTab,
      required this.whiteColor,
      required this.containerShadow2,
      required this.containerLinear1,
      required this.containerLinear2,
      required this.darkBlackBlueColor,
      required this.starYellowColor,
      required this.skyBlueColor,
      required this.greyCounterBorderColor,
      required this.hintColorLight,
      required this.lightBlackColor,
      required this.lightGrey2Color});

  final Color? mainColor;
  final Color? redColor;
  final Color? pinkColor;
  final Color? darkRedColor;
  final Color? darkBlue;
  final Color? greenColor;
  final Color? fillColor;
  final Color? descriptionColor;
  final Color? blueColor;
  final Color? grayColor;

  // final Color? blueGreenDark;
  final Color? orangeColor;
  final Color? primaryColor;
  final Color? textColor;
  final Color? hintColor;
  final Color? borderColor;
  final Color? navBarbg;
  final Color? navBarSelectedTab;
  final Color? whiteColor;
  final Color? containerShadow2;
  final Color? containerLinear1;
  final Color? containerLinear2;
  final Color? darkBlackBlueColor;
  final Color? starYellowColor;
  final Color? skyBlueColor;
  final Color? greyCounterBorderColor;
  final Color? hintColorLight;
  final Color? lightBlackColor;
  final Color? lightGrey2Color;

  @override
  ThemeExtension<MyColors> copyWith(
      {Color? pinkColor,
      Color? mainColor,
      Color? redColor,
      Color? darkRedColor,
      Color? greenColor,
      Color? darkBlue,
      Color? blueColor,
      Color? fillColor,
      Color? descriptionColor,
      Color? grayColor,
      Color? blueGreenDark,
      Color? borderColor,
      Color? blueGreenLight,
      Color? textColor,
      Color? textFormBorder,
      Color? navBarbg,
      Color? navBarSelectedTab,
      Color? containerShadow1,
      Color? containerShadow2,
      Color? containerLinear1,
      Color? orangeLight,
      Color? darkBlackBlueColor,
      Color? starYellowColor,
      Color? skyBlueColor,
      Color? greyCounterBorderColor,
      Color? hintColorLight,
      Color? lightBlackColor,
      Color? lightGrey2Color}) {
    return MyColors(
        pinkColor: pinkColor,
        mainColor: mainColor,
        redColor: redColor,
        darkRedColor: darkRedColor,
        darkBlue: darkBlue,
        greenColor: greenColor,
        fillColor: fillColor,
        descriptionColor: descriptionColor,
        grayColor: grayColor,
        blueColor: blueColor,
        borderColor: borderColor,
        // blueGreenDark: blueGreenDark,
        primaryColor: blueGreenLight,
        textColor: textColor,
        hintColor: textFormBorder,
        navBarbg: navBarbg,
        navBarSelectedTab: navBarSelectedTab,
        whiteColor: containerShadow1,
        containerShadow2: containerShadow2,
        containerLinear1: containerLinear1,
        containerLinear2: containerLinear2,
        orangeColor: orangeLight,
        darkBlackBlueColor: darkBlackBlueColor,
        starYellowColor: starYellowColor,
        skyBlueColor: skyBlueColor,
        greyCounterBorderColor: greyCounterBorderColor,
        hintColorLight: hintColorLight,
        lightBlackColor: lightBlackColor,
        lightGrey2Color: lightGrey2Color);
  }

  @override
  ThemeExtension<MyColors> lerp(
    covariant ThemeExtension<MyColors>? other,
    double t,
  ) {
    if (other is! MyColors) {
      return this;
    }
    return MyColors(
        mainColor: mainColor,
        darkBlue: darkBlue,
        redColor: redColor,
        darkRedColor: darkRedColor,
        greenColor: greenColor,
        fillColor: fillColor,
        pinkColor: pinkColor,
        descriptionColor: descriptionColor,
        grayColor: grayColor,
        blueColor: blueColor,
        borderColor: borderColor,
        // blueGreenDark: blueGreenDark,
        primaryColor: primaryColor,
        textColor: textColor,
        hintColor: hintColor,
        navBarbg: navBarbg,
        navBarSelectedTab: navBarSelectedTab,
        whiteColor: whiteColor,
        containerShadow2: containerShadow2,
        containerLinear1: containerLinear1,
        containerLinear2: containerLinear2,
        orangeColor: orangeColor,
        darkBlackBlueColor: darkBlackBlueColor,
        starYellowColor: starYellowColor,
        skyBlueColor: skyBlueColor,
        greyCounterBorderColor: greyCounterBorderColor,
        hintColorLight: hintColorLight,
        lightBlackColor: lightBlackColor,
        lightGrey2Color: lightGrey2Color);
  }

  static const MyColors dark = MyColors(
      pinkColor: ColorsDark.pinkColor,
      darkBlue: ColorsDark.darkBlue,
      fillColor: ColorsDark.fillColor,
      redColor: ColorsDark.redColor,
      mainColor: ColorsDark.mainColor,
      darkRedColor: ColorsDark.darkRedColor,
      greenColor: ColorsDark.greenColor,
      grayColor: ColorsDark.grayDark,
      descriptionColor: ColorsDark.descriptionColor,
      blueColor: ColorsDark.blueLight,
      // blueGreenDark: ColorsDark.blueDark,
      primaryColor: ColorsDark.blueLight,
      borderColor: ColorsDark.borderColorDark,
      textColor: ColorsDark.white,
      hintColor: ColorsDark.hintColorDark,
      navBarbg: ColorsDark.navBarDark,
      navBarSelectedTab: ColorsDark.white,
      whiteColor: ColorsDark.black1,
      containerShadow2: ColorsDark.black2,
      containerLinear1: ColorsDark.black1,
      containerLinear2: ColorsDark.black2,
      orangeColor: ColorsDark.orangeDark,
      darkBlackBlueColor: ColorsDark.darkBlackBlueColor,
      starYellowColor: ColorsDark.starYellowColor,
      skyBlueColor: ColorsDark.skyBlueColor,
      greyCounterBorderColor: ColorsDark.greyCounterBorderColor,
      hintColorLight: ColorsDark.hintColorDark,
      lightBlackColor: ColorsDark.lightBlackColor,
      lightGrey2Color: ColorsDark.lightGrey2);

  static const MyColors light = MyColors(
      mainColor: ColorsLight.mainColor,
      darkBlue: ColorsLight.darkBlue,
      redColor: ColorsLight.redColor,
      pinkColor: ColorsLight.pinkColor,
      fillColor: ColorsLight.fillColor,
      darkRedColor: ColorsLight.darkRedColor,
      greenColor: ColorsLight.greenColor,
      grayColor: ColorsLight.grayLight,
      descriptionColor: ColorsLight.descriptionColor,
      blueColor: ColorsLight.blueLight,
      borderColor: ColorsLight.borderColorLight,
      // blueGreenDark: ColorsLight.greenDark,
      primaryColor: ColorsLight.primaryColorLight,
      textColor: ColorsLight.black,
      hintColor: ColorsLight.hintColorLight,
      navBarbg: ColorsLight.mainColor,
      navBarSelectedTab: ColorsLight.primaryColorDark,
      whiteColor: ColorsLight.white,
      containerShadow2: ColorsLight.white,
      containerLinear1: ColorsLight.primaryColorDark,
      containerLinear2: ColorsLight.primaryColorLight,
      orangeColor: ColorsLight.orangeLight,
      darkBlackBlueColor: ColorsLight.darkBlackBlueColor,
      starYellowColor: ColorsLight.starYellowColor,
      skyBlueColor: ColorsLight.skyBlueColor,
      greyCounterBorderColor: ColorsLight.greyCounterBorderColor,
      hintColorLight: ColorsLight.hintColorLight,
      lightBlackColor: ColorsLight.lightBlackColor,
      lightGrey2Color: ColorsLight.lightGrey2);
}
