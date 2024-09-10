import 'package:clean_arc/core/presentation/util/style/images/assets.gen.dart';
import 'package:clean_arc/core/presentation/widget/text_app.dart';
import 'package:clean_arc/core/utils_package/utils_package.dart';
import 'package:flutter/material.dart';

class AboutUsScreen extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              context.color.primaryColor!,
              context.color.orangeColor!,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [-0.8, 1],
          ),
        ),
        child: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: context
                  .height, // Ensure the container takes up at least the full height of the screen
            ),
            child: IntrinsicHeight(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  _buildTopSection(context),
                  _buildBottomSection(context),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTopSection(BuildContext context) {
    return Expanded(
      child: SafeArea(
        child: Stack(
          children: [
            Positioned(
              top: 0,
              right: 350,
              left: 0,
              child: Container(
                height: 50,
                width: 50,
                decoration: const BoxDecoration(
                  color: Colors.transparent,
                  shape: BoxShape.circle,
                ),
                child: IconButton(
                  onPressed: () {
                    context.router.pop();
                  },
                  icon: AppImages.images.core.svg.transferArrow.svg(),
                ),
              ),
            ),
            Positioned(
              top: 100,
              right: 0,
              left: 0,
              child: Center(
                child: AppImages.images.core.logos.logo.image(
                  fit: BoxFit.cover,
                  width: 250,
                ),
              ),
            ),
            // Positioned(
            //   right: 0,
            //   left: 0,
            //   top: 220,
            //   child: Column(
            //     children: [
            //       TextApp(
            //         text: context.translate.loginNowandRegister,
            //         style: context.textStyle.copyWith(
            //           fontSize: AppDimensions.fontSizeExtraLarge,
            //           color: context.color.whiteColor,
            //           // fontFamily: "Tajawal",
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
          ],
        ),
      ),
    );
  }

  Widget _buildBottomSection(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(35),
          topRight: Radius.circular(35),
        ),
      ),
      child: Padding(
          padding: const EdgeInsets.all(29.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextApp(
                text: 'ماهي بابلوشيتا.؟',
                style: TextStyle(
                  fontSize: 24,
                  // fontFamily: 'Tajawal',
                  fontWeight: FontWeight.bold,
                ),
              ),
              // SizedBox(height: 20),
              TextApp(
                text:
                    'منصة يمكنك من خلالها إدارة متجرك الخاص سواء أكنت فرد أو مشروع تجاري مع العديد من المميزات الأخرى',
                style: TextStyle(
                  fontSize: 20,
                  // fontFamily: 'Tajawal',
                  fontWeight: FontWeight.normal,
                ),
              ),
              // SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: Divider(
                      color: Colors.black,
                      thickness: 1,
                      endIndent: 10,
                    ),
                  ),
                  Text(
                    ' تواصل معنا',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      color: Colors.black,
                      thickness: 1,
                      indent: 10,
                    ),
                  ),
                  SizedBox(width: 10),
                ],
              ),
              Column(
                children: [
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: AppImages.images.core.svg.phone.svg(
                          height: 10,
                          width: 10,
                        ),
                      ),
                      TextApp(text: '218927250600+'),
                    ],
                  ),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: AppImages.images.core.svg.phone.svg(
                          height: 10,
                          width: 10,
                        ),
                      ),
                      TextApp(text: '218927250600+'),
                    ],
                  ),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: AppImages.images.core.svg.iconMaterialEmail.svg(
                          height: 10,
                          width: 10,
                        ),
                      ),
                      TextApp(text: 'info@paploshita.com'),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Divider(
                          color: Colors.black,
                          thickness: 1,
                          endIndent: 10,
                        ),
                      ),
                      Text(
                        ' روابط التواصل الاجتماعي ',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      Expanded(
                        child: Divider(
                          color: Colors.black,
                          thickness: 1,
                          indent: 10,
                        ),
                      ),
                      SizedBox(width: 10),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon:
                            AppImages.images.core.svg.iconAwesomeInstagram.svg(
                          height: 32.h,
                          width: 32.h,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: AppImages.images.core.svg.iconMetroFacebook.svg(
                          height: 32.h,
                          width: 32.h,
                        ),
                      ),
                    ],
                  )
                ],
              )
            ],
          )),
    );
  }
}
