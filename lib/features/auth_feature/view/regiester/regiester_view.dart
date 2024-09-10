import 'package:clean_arc/core/routing/app_router.gr.dart';
import 'package:clean_arc/core/utils_package/utils_package.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';

@RoutePage()
class RegiesterView extends StatefulWidget {
  const RegiesterView({super.key});

  static const path = '/RegiesterViewRoute';

  @override
  State<RegiesterView> createState() => _RegiesterViewState();
}

class _RegiesterViewState extends State<RegiesterView> {
  @override
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
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 25.0),
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
            Column(
              children: [
                Center(
                  child: AppImages.images.core.logos.logo.image(
                    fit: BoxFit.cover,
                    width: 200,
                  ),
                ),
                Column(
                  children: [
                    TextApp(
                      text: context.translate.loginNowandRegister,
                      style: context.textStyle.copyWith(
                        fontSize: AppDimensions.fontSizeExtraLarge,
                        color: context.color.whiteColor,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBottomSection(BuildContext context) {
    return Expanded(
      child: Container(
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
              _buildNameField(context),
              SizedBox(height: 23.h),
              _buildEmailField(context),
              SizedBox(height: 23.h),
              _buildPasswordField(context),
              SizedBox(height: 23.h),
              _buildConfirmPasswordField(context),
              SizedBox(height: 23.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextApp(
                    text: context.translate.orLoginWith,
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: context.color.grayColor,
                    ),
                  ),
                  SizedBox(width: 4.w),
                  _buildloginfacebookButton(context),
                ],
              ),
              SizedBox(height: 23.h),
              _buildLoginButton(context),
              SizedBox(height: 23.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextApp(
                    text: context.translate.haveAccount,
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: context.color.grayColor,
                    ),
                  ),
                  SizedBox(width: 4.w),
                  _buildGOTOAccountdtextButton(context),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildNameField(BuildContext context) {
    return CustomTextField(
      maxLines: 1,
      isShowBorder: false,
      prefixIcon: AppImages.images.core.svg.userIcon.svg(),
      fillColor: context.color.grayColor!.withOpacity(0.1),
      hintText: context.translate.name,
      onValidate: (value) {
        if (value.isDigit() && value?.length != 11) {
          return context.translate.enterAValidPhoneOrEmail;
        }
        if (!value.isDigit() && !EmailValidator.validate(value ?? "")) {
          return context.translate.enterAValidPhoneOrEmail;
        }
        return null;
      },
    );
  }

  Widget _buildEmailField(BuildContext context) {
    return CustomTextField(
      isShowBorder: false,
      prefixIcon: AppImages.images.core.svg.userIcon.svg(),
      fillColor: context.color.grayColor!.withOpacity(0.1),
      hintText: context.translate.enterEmail,
      onValidate: (value) {
        if (value.isDigit() && value?.length != 11) {
          return context.translate.enterAValidPhoneOrEmail;
        }
        if (!value.isDigit() && !EmailValidator.validate(value ?? "")) {
          return context.translate.enterAValidPhoneOrEmail;
        }
        return null;
      },
    );
  }

  Widget _buildPasswordField(BuildContext context) {
    return CustomTextField(
      maxLines: 1,
      fillColor: context.color.grayColor!.withOpacity(0.1),
      isShowBorder: false,
      prefixIcon: AppImages.images.core.svg.nounLocked.svg(),
      // isPassword: true,
      titleText: context.translate.password,
      hintText: context.translate.password,
    );
  }

  Widget _buildConfirmPasswordField(BuildContext context) {
    return CustomTextField(
      fillColor: context.color.grayColor!.withOpacity(0.1),
      isShowBorder: false,
      prefixIcon: AppImages.images.core.svg.nounLocked.svg(),
      // isPassword: true,
      hintText: context.translate.confirmPassword,
    );
  }

  Widget _buildForgotPasswordButton(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: () {
            context.pushRoute(ForgetPasswordViewRoute());
          },
          child: TextApp(
            text: context.translate.forgetPassword,
            style: context.textStyle.copyWith(
              fontSize: AppDimensions.fontSizeDefault,
              fontWeight: FontWeightHelper.semiBold,
              color: context.color.grayColor,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildLoginButton(BuildContext context) {
    return CustomButton(
      height: context.height / 14,
      width: double.infinity,
      onPressed: () {
        print("login");
      },
      child: TextApp(
        text: context.translate.signIn,
        style: context.textStyleButton,
      ),
    );
  }

  Widget _buildcreateAccountdtextButton(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: () {},
          child: TextApp(
            text: context.translate.createAccount,
            style: context.textStyle.copyWith(
              fontSize: AppDimensions.fontSizeDefault,
              fontWeight: FontWeightHelper.semiBold,
              color: context.color.primaryColor,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildGOTOAccountdtextButton(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: () {},
          child: TextApp(
            text: context.translate.login,
            style: context.textStyle.copyWith(
              fontSize: AppDimensions.fontSizeDefault,
              fontWeight: FontWeightHelper.semiBold,
              color: context.color.primaryColor,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildloginfacebookButton(BuildContext context) {
    return Row(
      children: [
        InkWell(
            onTap: () {},
            child: Container(
              decoration: BoxDecoration(
                color: context.color.darkBlackBlueColor,
                borderRadius: BorderRadius.circular(8),
              ),
              height: 42,
              width: 160,
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextApp(
                      text: context.translate.facebook,
                      style: context.textStyle.copyWith(
                        fontSize: AppDimensions.fontSizeExtraLarge,
                        color: context.color.whiteColor,
                      ),
                    ),
                    SizedBox(width: 10),
                    Icon(
                      Icons.facebook,
                      color: context.color.whiteColor,
                      size: 30,
                    ),
                  ],
                ),
              ),
            )),
      ],
    );
  }
}
