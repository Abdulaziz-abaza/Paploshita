import 'package:clean_arc/core/routing/app_router.gr.dart';
import 'package:clean_arc/core/utils_package/utils_package.dart';
import 'package:clean_arc/features/auth_feature/view/joinToDriver/componant.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

@RoutePage()
class JointodriverView extends StatefulWidget {
  const JointodriverView({super.key});

  static const path = '/JointodriverView';

  @override
  State<JointodriverView> createState() => _JointodriverViewState();
}

class _JointodriverViewState extends State<JointodriverView> {
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
                      text: context.translate.joinToDriver,
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
              TextApp(
                text: context.translate.fillform,
                style: context.textStyle.copyWith(
                  fontSize: AppDimensions.fontSizeExtraLarge,
                  color: context.color.primaryColor,
                ),
              ),
              SizedBox(height: 23.h),
              _buildNameField(context),
              SizedBox(height: 23.h),
              _buildEmailField(context),
              SizedBox(height: 23.h),
              _buildPhoneNumberField(context),
              SizedBox(height: 23.h),
              buildLicenseImageSection(
                context,
                'صورة رخصة القيادة',
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

  Widget _buildPhoneNumberField(BuildContext context) {
    return CustomTextField(
      maxLines: 1,
      fillColor: context.color.grayColor!.withOpacity(0.1),
      isShowBorder: false,
      prefixIcon:
          Icon(Icons.mobile_screen_share, color: context.color.grayColor),
      // isPassword: true,
      titleText: context.translate.phoneNumber,
      hintText: context.translate.phoneNumber,
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
}

Future<void> _pickImage() async {
  final ImagePicker picker = ImagePicker();
  try {
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      print('Image selected: ${image.path}');
    } else {
      print('No image selected.');
    }
  } catch (e) {
    print('Error picking image........: $e');
  }
}
