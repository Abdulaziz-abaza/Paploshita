import 'package:clean_arc/core/utils_package/utils_package.dart';
import 'package:flutter/material.dart';

extension ContextExt on BuildContext {
  MyColors get color => Theme.of(this).extension<MyColors>()!;

  MyAssets get assets => Theme.of(this).extension<MyAssets>()!;

  Translations get translate => Translations.of(this)!;

  Border get border => Border.all(color: color.borderColor!);

  bool get isEnLocale => Translations.of(this)?.localeName == 'en';

  TextStyle get textStyle => Theme.of(this).textTheme.displaySmall!;

  TextStyle get textStyleButton =>
      Theme.of(this).textTheme.displaySmall!.copyWith(
          fontSize: AppDimensions.fontSizeLarge,
          color: Colors.white,
          fontWeight: FontWeightHelper.medium);

  ///=======================  Sizes =========================================ئ

  double get width => MediaQuery.of(this).size.width;

  double get height => MediaQuery.of(this).size.height;
}
