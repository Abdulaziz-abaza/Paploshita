import 'package:clean_arc/core/utils_package/utils_package.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    required this.onPressed,
    required this.child,
    this.height,
    this.bgColor,
    this.borderColor,
    this.withBorderOnly = false,
    this.width,
    this.isLoading = false,
    super.key,
  });

  final VoidCallback? onPressed;
  final Widget child;
  final bool withBorderOnly;
  final double? height;
  final Color? bgColor;
  final Color? borderColor;
  final double? width;
  final bool? isLoading;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed ??
          () {
            if (isLoading == true) {
              return;
            }
            if (onPressed == null) return;
            onPressed!();
          },
      child: Container(
        height: height ?? 45.h,
        width: width ?? 50.w,
        // padding: EdgeInsets.symmetric(horizontal: 12.w),
        decoration: ShapeDecoration(
          // color: onPressed == null
          //     ? context.color.grayColor?.withOpacity(.5)
          //     : bgColor ?? context.color.primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
            side: withBorderOnly
                ? BorderSide(color: borderColor ?? context.color.borderColor!)
                : BorderSide.none,
          ),
          gradient: LinearGradient(
            colors: [
              context.color.orangeColor!,
              context.color.primaryColor!,
              // ColorsDark.redColor,
              // ColorsDark.greenColor,

              // context.color.blueColor!,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: [-0.1, .9],
          ),
        ),
        child: Center(
            child: (isLoading ?? false)
                ? Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4.0),
                    child: SizedBox(
                        width: 25,
                        height: 25,
                        child: CircularProgressIndicator(
                          color: Colors.white,
                        )),
                  )
                : child),
      ),
    );
  }
}
