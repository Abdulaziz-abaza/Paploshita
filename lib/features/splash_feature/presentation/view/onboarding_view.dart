import 'package:clean_arc/core/presentation/widget/dark_and_lang_button.dart';
import 'package:clean_arc/core/routing/app_router.gr.dart';
import 'package:clean_arc/core/utils_package/utils_package.dart';
import 'package:clean_arc/features/splash_feature/domain/entity/onboarding_entity.dart';
import 'package:clean_arc/features/splash_feature/presentation/view/componant/dots.dart';
import 'package:flutter/material.dart';

@RoutePage()
class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  static const String path = '/OnBoardingView';

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  late PageController controller;
  int currentPage = 0;

  List<OnBoardingEntity> onBoardingList = [];

  @override
  void initState() {
    controller = PageController();

    Future.delayed(Duration.zero, () {
      onBoardingList = [
        OnBoardingEntity(
          title: context.translate.onboardingTitle1,
          description: context.translate.onboardingDescription1,
          image: AppImages.images.core.onboarding.onbording1.path,
        ),
        OnBoardingEntity(
            title: context.translate.onboardingTitle2,
            description: context.translate.onboardingDescription2,
            image: AppImages.images.core.onboarding.onbording2.path),
      ];
      setState(() {});
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        // MoveToBackground.moveTaskToBack();
        return false;
      },
      child: Scaffold(
        appBar: AppBar(
          actions: [
            const DarkAndLangButtons(),
          ],
        ),
        backgroundColor: context.color.whiteColor,
        body: SizedBox(
          height: context.height,
          width: context.width,
          child: Stack(
            children: [
              PageView.builder(
                physics: const BouncingScrollPhysics(),
                controller: controller,
                onPageChanged: (value) => setState(() => currentPage = value),
                itemCount: onBoardingList.length,
                itemBuilder: (context, i) {
                  return Padding(
                    padding: const EdgeInsets.all(40.0),
                    child: Column(
                      children: [
                        const Spacer(
                          flex: 5,
                        ),
                        Image.asset(
                          onBoardingList[i].image,
                          height: context.height / 3,
                        ),
                        const Spacer(
                          flex: 5,
                        ),
                        Container(
                          width: context.width / 1.5,
                          child: Column(
                            children: [
                              Text(
                                onBoardingList[i].title,
                                textAlign: TextAlign.center,
                                style: context.textStyle.copyWith(
                                  fontSize: AppDimensions.fontSizeExtraLarge,
                                  fontWeight: FontWeightHelper.bold,
                                ),
                              ),
                              const SizedBox(height: 14),
                              Container(
                                child: Text(
                                  onBoardingList[i].description,
                                  style: context.textStyle.copyWith(
                                    fontSize: AppDimensions.fontSizeLarge,
                                    fontWeight: FontWeightHelper.medium,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Spacer(
                          flex: 5,
                        ),
                      ],
                    ),
                  );
                },
              ),
              Positioned(
                bottom: 0,
                right: 0,
                left: 0,
                child: Padding(
                  padding: EdgeInsets.all(30),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              TextApp(
                                text: context.translate.skip,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              IconButton(
                                onPressed: () {
                                  // if (currentPage + 1 ==
                                  //     onBoardingList.length) {
                                  //   SharedPref().setBoolean(
                                  //       key: PrefKeys.onBoardingHide,
                                  //       value: true);
                                  //   context.router.replace(WelcomeBack());
                                  // } else {
                                  //   controller.nextPage(
                                  //     duration:
                                  //         const Duration(milliseconds: 200),
                                  //     curve: Curves.easeIn,
                                  //   );
                                  // }
                                  context.router.replace(WelcomeBack());
                                  print(
                                      "currentPxxxxxxxxxxxxxxxxxxxxxxxxage: " +
                                          currentPage.toString());
                                },
                                icon: const Icon(Icons.arrow_forward),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(
                          onBoardingList.length,
                          (int index) => BulidDots(
                            index: index,
                            currentPage: currentPage,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
