import 'package:clean_arc/core/utils_package/utils_package.dart';
import 'package:clean_arc/main.dart';
import 'package:flutter/material.dart';

class TextPrice extends StatelessWidget {
  const TextPrice(
      {required this.price,
      this.color,
      this.fontWeight,
      this.fontSize,
      super.key});

  final String price;

  // final TextStyle? textStyle;
  final Color? color;
  final FontWeight? fontWeight;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return TextApp(
      text: '$price $userCurrency',
      style: context.textStyle.copyWith(
        color: color,
        fontSize: fontSize ?? AppDimensions.fontSizeLarge,
        fontWeight: fontWeight ?? FontWeightHelper.semiBold,
      ),
    );
  }
}
