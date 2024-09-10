import 'package:clean_arc/core/presentation/extintions/context_extintions.dart';
import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class CustomLoading extends StatelessWidget {
  CustomLoading({
    Key? key,
    this.color,
    this.takeScreenHeight,
    this.size,
  }) : super(key: key);
  final Color? color;
  final double? size;
  bool? takeScreenHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: (takeScreenHeight == true) ? context.height / 2 : null,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: LoadingAnimationWidget.threeArchedCircle(
                size:size?? 50,
                color: color ?? context.color.primaryColor!,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
