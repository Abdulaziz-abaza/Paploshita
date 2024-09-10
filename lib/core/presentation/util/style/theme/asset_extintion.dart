import 'package:flutter/material.dart';

class MyAssets extends ThemeExtension<MyAssets> {
  const MyAssets({
    required this.bigNavBar,
    required this.homeBg,
    required this.cardBg,
   });

  final String? bigNavBar;
  final String? homeBg;
  final String? cardBg;

  @override
  ThemeExtension<MyAssets> copyWith({
    String? bigNavBar,
    String? homeBg,
    String? cardBgCard,
  }) {
    return MyAssets(
      bigNavBar: bigNavBar,
      homeBg: homeBg,
      cardBg: cardBgCard,
    );
  }

  @override
  ThemeExtension<MyAssets> lerp(
    covariant ThemeExtension<MyAssets>? other,
    double t,
  ) {
    if (other is! MyAssets) {
      return this;
    }
    return MyAssets(
      bigNavBar: bigNavBar,
      homeBg: homeBg,
      cardBg: cardBg,
    );
  }

  // static MyAssets dark = MyAssets(
  //   bigNavBar: AppImages.images.customer.bigNavBarDark.path,
  //   homeBg: AppImages.images.customer.homeBgDark.path,
  //   cardBg: AppImages.images.core.cardBgDark.path,
  // );
  // static MyAssets light = MyAssets(
  //   bigNavBar: AppImages.images.customer.bigNavBarLight.path,
  //   homeBg: AppImages.images.customer.homeBgLight.path,
  //   cardBg: AppImages.images.core.cardBgLight.path,
  // );
}
