import 'package:clean_arc/core/utils_package/utils_package.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ForgetPasswordView extends StatefulWidget {
  ForgetPasswordView({super.key});

  static const path = '/ForgetPasswordView';

  @override
  State<ForgetPasswordView> createState() => _ForgetPasswordViewState();
}

class _ForgetPasswordViewState extends State<ForgetPasswordView> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Form(
      key: _formKey,
      child: SafeArea(
        child: SizedBox(
          height: context.height,
          width: context.width,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Spacer(),
                IconButton(
                    onPressed: () {
                      context.maybePop();
                    },
                    icon: const Icon(
                      Icons.arrow_back_ios,
                      size: AppDimensions.fontSizeExtraLarge,
                    )),
                Spacer(),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        10,
                      ),
                      border: Border.all(color: context.color.borderColor!)),
                  height: 60,
                  width: 60,
                  // child:
                  // AppImages.images.core.keyIcon.svg(fit: BoxFit.scaleDown),
                ),
                Spacer(
                  flex: 3,
                ),
                TextApp(
                  text: context.translate.forgetPassword2,
                  style: context.textStyle.copyWith(
                      fontWeight: FontWeightHelper.bold,
                      fontSize: AppDimensions.fontSizeOverLarge),
                ),
                SizedBox(
                  height: 16.h,
                ),
                Container(
                  // width: context.width / 1.5,
                  child: TextApp(
                    text: context.translate.dontWorry,
                    style: context.textStyle.copyWith(
                      fontWeight: FontWeightHelper.medium,
                      fontSize: AppDimensions.fontSizeLarge,
                      color: context.color.descriptionColor,
                      height: 2,
                    ),
                    textAlign: TextAlign.start,
                  ),
                ),
                SizedBox(
                  height: 16.h,
                ),
                CustomTextField(
                    titleText: context.translate.phoneOrEmail,
                    hintText: context.translate.enterPhoneOrEmail,
                    onValidate: (p0) {
                      if (p0 == null || p0.isEmpty) {
                        return context.translate.requiredField;
                      } else {
                        if (!p0.contains('@') && int.tryParse(p0) == null ||
                            p0.length < 8) {
                          return context.translate.enterAValidPhoneNumberOrMail;
                        } else {
                          return null;
                        }
                      }
                    }

                    // isShowBorder: true,
                    ),
                const Spacer(
                  flex: 10,
                ),
                CustomButton(
                    width: double.infinity,
                    onPressed: () {},
                    child: TextApp(
                      text: context.translate.resetPassword,
                      style: context.textStyleButton,
                    )),
                SizedBox(
                  height: 22.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextApp(
                      text: context.translate.returnToSignIn,
                      style: context.textStyle.copyWith(
                          color: context.color.descriptionColor,
                          fontWeight: FontWeightHelper.semiBold),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.arrow_forward,
                      color: context.color.descriptionColor,
                    )
                  ],
                ),
                Spacer(
                  flex: 10,
                ),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
