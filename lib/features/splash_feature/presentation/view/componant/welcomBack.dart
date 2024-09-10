import 'package:clean_arc/core/routing/app_router.gr.dart';
import 'package:clean_arc/core/utils_package/utils_package.dart';
import 'package:flutter/material.dart';

@RoutePage()
class welcomeBack extends StatefulWidget {
  welcomeBack({super.key});

  static const path = '/welcomeBack';

  @override
  State<welcomeBack> createState() => _welcomeBackState();
}

class _welcomeBackState extends State<welcomeBack> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.color.whiteColor!.withOpacity(1),
      body: Column(
        children: [
          SizedBox(height: 50),
          Center(
            child: Column(
              children: [
                AppImages.images.core.logos.appLogo.image(
                  width: 188,
                  height: 85,
                ),
                SizedBox(height: 8),
                TextApp(
                  text: context.translate.welcomeToPaploehita,
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: context.color.primaryColor),
                )
              ],
            ),
          ),
          // SizedBox(height: 20),
          GridView(
            shrinkWrap: true,
            padding: EdgeInsets.all(70),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 1,
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
            ),
            children: [
              _buildIconCard(
                context,
                AppImages.images.core.svg.userIcon.svg(
                  width: 35,
                  height: 35,
                ),
                context.translate.login,
                isChecked: true,
                onPressed: () {
                  context.router.push(LoginViewRoute());
                },
              ),
              _buildIconCard(
                context,
                AppImages.images.core.svg.icon3.image(
                  width: 35,
                  height: 35,
                ),
                context.translate.openYourStore,
                onPressed: () {
                  // context.router.push();
                  context.router.push(OpenNewStoreViewRoute());
                },
              ),
              _buildIconCard(
                context,
                AppImages.images.core.svg.icon4.image(
                  width: 35,
                  height: 35,
                ),
                context.translate.tobeMarkter,
                onPressed: () {
                  context.router.push(OpenstoreViewRoute());
                  print('tobemarkterddddddddddddddd');
                },
              ),
              _buildIconCard(
                context,
                AppImages.images.core.svg.icon2.image(
                  width: 35,
                  height: 35,
                ),
                context.translate.addToBabloshita,
                onPressed: () {
                  context.router.push(JointodriverViewRoute());
                },
              ),
            ],
          ),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                onPressed: () {
                  context.router.push(LoginViewRoute());
                },
                child: Row(
                  children: [
                    TextApp(
                      text: context.translate.skip,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Icon(Icons.arrow_forward),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }

  Widget _buildIconCard(BuildContext context, Widget myImage, String label,
      {bool isChecked = false, required VoidCallback onPressed}) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
                color: Colors.black12,
                blurRadius: 6,
                spreadRadius: 2,
                offset: Offset(4, 2)),
          ],
        ),
        child: Stack(
          children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // AspectRatio(aspectRatio: 1, child: ),

                  Container(child: myImage),
                  TextApp(
                    text: label,
                    style: TextStyle(
                      fontSize: AppDimensions.fontSizeDefault,
                      color: context.color.grayColor,
                    ),
                  ),
                ],
              ),
            ),
            if (isChecked)
              Positioned(
                top: 5,
                right: 6,
                left: 90,
                child: Icon(
                  Icons.check_circle,
                  color: Colors.orange,
                  size: 30,
                ),
              ),
          ],
        ),
      ),
    );
  }
}

class StoreScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Store Screen')),
      body: Center(child: Text('Store Screen Content')),
    );
  }
}
