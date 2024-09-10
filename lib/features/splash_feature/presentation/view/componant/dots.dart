import 'package:clean_arc/core/utils_package/utils_package.dart';
import 'package:flutter/material.dart';

class BulidDots extends StatelessWidget {
  final int index;
  final int currentPage;

  const BulidDots({required this.index, required this.currentPage, super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(50),
        ),
        color: currentPage == index
            ? context.color.primaryColor
            : context.color.primaryColor!.withOpacity(.5),
      ),
      margin: const EdgeInsets.only(right: 5),
      height: 10,
      curve: Curves.easeIn,
      width: currentPage == index ? 25 : 10,
    );
  }
}
