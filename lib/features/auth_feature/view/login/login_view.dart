import 'package:clean_arc/core/routing/app_router.gr.dart';
import 'package:clean_arc/core/utils_package/utils_package.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';

@RoutePage()
class LoginView extends StatefulWidget {
  const LoginView({super.key});

  static const path = '/LoginView';

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
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
            Positioned(
              right: 0,
              left: 0,
              top: 220,
              child: Column(
                children: [
                  TextApp(
                    text: context.translate.loginNowandRegister,
                    style: context.textStyle.copyWith(
                      fontSize: AppDimensions.fontSizeExtraLarge,
                      color: context.color.whiteColor,
                      // fontFamily: "Tajawal",
                    ),
                  ),
                ],
              ),
            ),
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
            _buildWelcomeBackText(),
            SizedBox(height: 30),
            _buildEmailPhoneField(context),
            SizedBox(height: 16.h),
            _buildPasswordField(context),
            SizedBox(height: 24.h),
            _buildLoginButton(context),
            SizedBox(height: 24.h),
            _buildForgotPasswordButton(context),
            SizedBox(height: 24.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextApp(
                  text: context.translate.dontHaveAccount,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: context.color.grayColor,
                  ),
                ),
                SizedBox(width: 4.w),
                _buildcreateAccountdtextButton(context),
                SizedBox(width: 4.w),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildWelcomeBackText() {
    return TextApp(
      text: context.translate.welcomeBack,
      style: TextStyle(
        fontSize: 24,
        // fontFamily: 'Tajawal',
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget _buildEmailPhoneField(BuildContext context) {
    return CustomTextField(
      isShowBorder: false,
      prefixIcon: AppImages.images.core.svg.userIcon.svg(),
      fillColor: context.color.grayColor!.withOpacity(0.1),
      titleText: context.translate.phoneOrEmail,
      hintText: context.translate.enterPhoneOrEmail,
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
      fillColor: context.color.grayColor!.withOpacity(0.1),
      isShowBorder: false,
      prefixIcon: AppImages.images.core.svg.nounLocked.svg(),
      // isPassword: true,
      titleText: context.translate.password,
      hintText: context.translate.password,
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
        context.router.push((CustomNavBarViewRoute()));
        // context.router.push(LoginViewRoute());
        print("login");
      },
      child: TextApp(
        text: context.translate.signIn,
      ),
    );
  }

  Widget _buildcreateAccountdtextButton(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: () {
            context.router.push(RegiesterViewRoute());
          },
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
}
