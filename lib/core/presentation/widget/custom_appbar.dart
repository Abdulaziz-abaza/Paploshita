import 'package:clean_arc/core/utils_package/utils_package.dart';
import 'package:flutter/material.dart';

class TitleAppBar extends StatelessWidget {
  const TitleAppBar({required this.title, this.suffixIcon,super.key});

  final String title;
  final Widget? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextApp(
            text: title,
            style: context.textStyle.copyWith(
              color: context.color.primaryColor,
                fontSize: AppDimensions.fontSizeLarge,
                fontWeight: FontWeightHelper.bold),
          ),
        ),
        suffixIcon??Container()
      ],
    );
  }
}
