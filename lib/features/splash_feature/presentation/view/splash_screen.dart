import 'dart:async';

import 'package:clean_arc/core/routing/app_router.gr.dart';
import 'package:clean_arc/core/utils_package/utils_package.dart';
import 'package:flutter/material.dart';

@RoutePage()
class SplashView extends StatefulWidget {
  static const String path = '/SplashScreen';

  const SplashView({super.key});

  @override
  SplashViewState createState() => SplashViewState();
}

class SplashViewState extends State<SplashView>
    with SingleTickerProviderStateMixin {
  var _visible = true;

  AnimationController? animationController;
  Animation<double>? animation;

  Future<Timer> _startTime() async {
    var duration = const Duration(seconds: 3);
    return Timer(duration, _navigationPage);
  }

  void _navigationPage() {
    context.router.replace(OnBoardingViewRoute());
  }

  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 4));
    animation =
        CurvedAnimation(parent: animationController!, curve: Curves.easeOut);

    animation!.addListener(() => setState(() {}));
    animationController!.forward();

    setState(() {
      _visible = !_visible;
    });
    _startTime();
  }

  @override
  void dispose() {
    animationController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.color.whiteColor,
      body: Container(
        height: context.height,
        width: context.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AppImages.images.core.logos.backLogo.image().image,
            fit: BoxFit.cover, // Adjust the fit to cover the entire screen
          ),
        ),
        child: Stack(
          fit: StackFit.expand,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //  SizedBox(height: AppDimensions.fsex,)
                AppImages.images.core.logos.appLogo.image(
                  width: animation!.value * 250,
                  height: animation!.value * 350,
                ),
                //     context.router.replace(OnBoardingViewRoute());
                //     context.router.push(OnBoardingViewRoute());
                // context.router.replaceAll([OnBoardingViewRoute()]);
                //       TextApp(text: context.translate.address,style:
                // context.textStyle.copyWith(
                // fontSize: AppDimensions.fontSizeDefault,
                //         color: context.color.primaryColor,
                //         fontWeight: FontWeightHelper.bold,
                //         // size
                //       ),)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
