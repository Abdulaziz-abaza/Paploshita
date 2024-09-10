import 'package:clean_arc/core/utils_package/utils_package.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

@RoutePage()
class ConfirmOtpView extends StatefulWidget {
  const ConfirmOtpView({super.key});

  static const path = '/ConfirmOtpView';

  @override
  State<ConfirmOtpView> createState() => _ConfirmOtpViewState();
}

class _ConfirmOtpViewState extends State<ConfirmOtpView> {
  String code = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: context.color.primaryColor?.withOpacity(.2),
        body: SafeArea(
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
                    context.router.maybePop();
                  },
                  icon: const Icon(
                    Icons.arrow_back_ios,
                    size: AppDimensions.fontSizeExtraLarge,
                  )),
              Spacer(),
              Container(
                child: TextApp(
                  text: context.translate.confirmVerificationCode,
                  style: context.textStyle.copyWith(
                    fontWeight: FontWeightHelper.medium,
                    fontSize: AppDimensions.fontSizeLarge,
                    height: 2,
                  ),
                  textAlign: TextAlign.start,
                ),
              ),
              const Spacer(
                flex: 3,
              ),
              TextApp(
                text: context.translate.codeSent,
                style: context.textStyle.copyWith(
                    fontWeight: FontWeightHelper.bold,
                    height: 1.6,
                    fontSize: AppDimensions.fontSizeOverLarge),
              ),
              SizedBox(
                height: 16.h,
              ),
              SizedBox(
                height: 16.h,
              ),
              OtpTextField(
                // styles: [],
                focusedBorderColor: context.color.primaryColor!,
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                fieldHeight: 50.h,
                fieldWidth: 35.h,
                numberOfFields: 8,
                borderColor: context.color.borderColor!,

                //set to true to show as box or false to show as dash
                showFieldAsBox: true,

                //runs when a code is typed in
                onCodeChanged: (String verificationCode) {
                  code = verificationCode;
                  //handle validation or checks here
                },
                //runs when every textfield is filled
                onSubmit: (String verificationCode) {
                  code = verificationCode;
                  // authCubit.postVerificationCode(code);
                }, // end onSubmit
              ),
              SizedBox(
                height: 20.h,
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
    ));
  }
}
