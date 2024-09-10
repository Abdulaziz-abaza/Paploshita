import 'package:clean_arc/core/presentation/functions/validation_utils.dart';
import 'package:clean_arc/core/utils_package/utils_package.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ResetPasswordView extends StatefulWidget {
  ResetPasswordView({super.key});

  static const path = '/ResetPasswordView';

  @override
  State<ResetPasswordView> createState() => _ResetPasswordViewState();
}

class _ResetPasswordViewState extends State<ResetPasswordView> {
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
                !context.router.canPop()
                    ? SizedBox()
                    : IconButton(
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
                  // child: AppImages.images.svg.lockIcon
                  // .svg(fit: BoxFit.scaleDown),
                ),
                Spacer(
                  flex: 3,
                ),
                TextApp(
                  text: context.translate.resetYourPassword,
                  style: context.textStyle.copyWith(
                      fontWeight: FontWeightHelper.bold,
                      fontSize: AppDimensions.fontSizeOverLarge),
                ),
                SizedBox(
                  height: 16.h,
                ),
                Container(
                  width: context.width / 1.3,
                  child: TextApp(
                    text: context.translate.newPasswordMustDiffer,
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
                  onValidate: MultiValidator([
                    RequiredValidator(
                        errorText: context.translate.requiredField),
                    MinLengthValidator(8,
                        errorText: context.translate.passwordError),
                  ]),
                  titleText: context.translate.password,
                  hintText: context.translate.enterPassword,
                  suffixIcon: const Icon(Icons.remove_red_eye_sharp),
                  // isShowBorder: true,
                ),
                SizedBox(
                  height: 16.h,
                ),
                CustomTextField(
                  titleText: context.translate.confirmPassword,
                  hintText: context.translate.enterPassword,
                  // isShowBorder: true,
                  suffixIcon: const Icon(Icons.remove_red_eye_sharp),
                ),
                SizedBox(
                  height: 16.h,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.check_circle,
                      size: 22,
                      color: context.color.blueColor,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    TextApp(
                      text: context.translate.passwordCondition1,
                      style: context.textStyle.copyWith(
                        fontWeight: FontWeightHelper.medium,
                        fontSize: AppDimensions.fontSizeLarge,
                        color: context.color.descriptionColor,
                        height: 2,
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.check_circle,
                      size: 22,
                      color: context.color.grayColor?.withOpacity(.4),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    TextApp(
                      text: context.translate.passwordCondition2,
                      style: context.textStyle.copyWith(
                        fontWeight: FontWeightHelper.medium,
                        fontSize: AppDimensions.fontSizeLarge,
                        color: context.color.descriptionColor,
                        height: 2,
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ],
                ),
                Spacer(
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
