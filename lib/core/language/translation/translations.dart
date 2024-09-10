import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'translations_ar.dart';
import 'translations_en.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of Translations
/// returned by `Translations.of(context)`.
///
/// Applications need to include `Translations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'translation/translations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: Translations.localizationsDelegates,
///   supportedLocales: Translations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the Translations.supportedLocales
/// property.
abstract class Translations {
  Translations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static Translations? of(BuildContext context) {
    return Localizations.of<Translations>(context, Translations);
  }

  static const LocalizationsDelegate<Translations> delegate = _TranslationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('ar'),
    Locale('en')
  ];

  /// No description provided for @splash.
  ///
  /// In en, this message translates to:
  /// **'splash'**
  String get splash;

  /// No description provided for @jj.
  ///
  /// In en, this message translates to:
  /// **'ennnnnnnnn'**
  String get jj;

  /// No description provided for @seeAll.
  ///
  /// In en, this message translates to:
  /// **'See All'**
  String get seeAll;

  /// No description provided for @bestSeller.
  ///
  /// In en, this message translates to:
  /// **'best Seller'**
  String get bestSeller;

  /// No description provided for @categories.
  ///
  /// In en, this message translates to:
  /// **'categories'**
  String get categories;

  /// No description provided for @changeLanguage.
  ///
  /// In en, this message translates to:
  /// **'change Language'**
  String get changeLanguage;

  /// No description provided for @onboardingTitle1.
  ///
  /// In en, this message translates to:
  /// **'Selling on the go'**
  String get onboardingTitle1;

  /// No description provided for @onboardingTitle2.
  ///
  /// In en, this message translates to:
  /// **'Inventory Picker Specialist'**
  String get onboardingTitle2;

  /// No description provided for @onboardingTitle3.
  ///
  /// In en, this message translates to:
  /// **'Fulfillment Center Picker'**
  String get onboardingTitle3;

  /// No description provided for @onboardingDescription1.
  ///
  /// In en, this message translates to:
  /// **'Order Fulfillment Pickers locate, scan, and prepare items for shipment, ensuring accurate and efficient processing in a fast-paced environment.'**
  String get onboardingDescription1;

  /// No description provided for @onboardingDescription2.
  ///
  /// In en, this message translates to:
  /// **'Inventory Picker Specialists accurately select products for packing and shipping, requiring organizational skills, attention to detail, and software proficiency.'**
  String get onboardingDescription2;

  /// No description provided for @onboardingDescription3.
  ///
  /// In en, this message translates to:
  /// **'As a Fulfillment Center Picker, you\'ll efficiently select and gather items for orders, ensuring accuracy and helping maintain high customer satisfaction standards.'**
  String get onboardingDescription3;

  /// No description provided for @next.
  ///
  /// In en, this message translates to:
  /// **'Next'**
  String get next;

  /// No description provided for @start.
  ///
  /// In en, this message translates to:
  /// **'Sٍtart'**
  String get start;

  /// No description provided for @signIn.
  ///
  /// In en, this message translates to:
  /// **'SignIn'**
  String get signIn;

  /// No description provided for @welcomeBack.
  ///
  /// In en, this message translates to:
  /// **'Welcome back '**
  String get welcomeBack;

  /// No description provided for @phoneOrEmail.
  ///
  /// In en, this message translates to:
  /// **'Phone number or email'**
  String get phoneOrEmail;

  /// No description provided for @enterPhoneOrEmail.
  ///
  /// In en, this message translates to:
  /// **'Enter Phone number or email'**
  String get enterPhoneOrEmail;

  /// No description provided for @enterAValidPhoneNumber.
  ///
  /// In en, this message translates to:
  /// **'Enter a valid phone number'**
  String get enterAValidPhoneNumber;

  /// No description provided for @enterAValidEmail.
  ///
  /// In en, this message translates to:
  /// **'Enter a valid email'**
  String get enterAValidEmail;

  /// No description provided for @enterAValidPhoneOrEmail.
  ///
  /// In en, this message translates to:
  /// **'Enter a valid phone number or email'**
  String get enterAValidPhoneOrEmail;

  /// No description provided for @password.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get password;

  /// No description provided for @enterPassword.
  ///
  /// In en, this message translates to:
  /// **'••••••••'**
  String get enterPassword;

  /// No description provided for @rememberMe.
  ///
  /// In en, this message translates to:
  /// **'Remember me'**
  String get rememberMe;

  /// No description provided for @forgetPassword.
  ///
  /// In en, this message translates to:
  /// **'forget Password'**
  String get forgetPassword;

  /// No description provided for @forgetPassword2.
  ///
  /// In en, this message translates to:
  /// **'forget Password2'**
  String get forgetPassword2;

  /// No description provided for @dontWorry.
  ///
  /// In en, this message translates to:
  /// **'Don\'t worry, we will send you account recovery instructions'**
  String get dontWorry;

  /// No description provided for @resetPassword.
  ///
  /// In en, this message translates to:
  /// **'reset Password'**
  String get resetPassword;

  /// No description provided for @returnToSignIn.
  ///
  /// In en, this message translates to:
  /// **'return To SignIn'**
  String get returnToSignIn;

  /// No description provided for @resetYourPassword.
  ///
  /// In en, this message translates to:
  /// **'Reset Your Password'**
  String get resetYourPassword;

  /// No description provided for @confirmVerificationCode.
  ///
  /// In en, this message translates to:
  /// **'Confirm Verification Code'**
  String get confirmVerificationCode;

  /// No description provided for @codeSent.
  ///
  /// In en, this message translates to:
  /// **'We sent you a activation code to your phone consisting of 6 digits'**
  String get codeSent;

  /// No description provided for @resendCode.
  ///
  /// In en, this message translates to:
  /// **'Resend the code'**
  String get resendCode;

  /// No description provided for @newPasswordMustDiffer.
  ///
  /// In en, this message translates to:
  /// **'Your new password must be different from the previous one'**
  String get newPasswordMustDiffer;

  /// No description provided for @confirmPassword.
  ///
  /// In en, this message translates to:
  /// **'Confirm Password'**
  String get confirmPassword;

  /// No description provided for @passwordCondition1.
  ///
  /// In en, this message translates to:
  /// **'Must be 8 characters long and include some numbers'**
  String get passwordCondition1;

  /// No description provided for @passwordCondition2.
  ///
  /// In en, this message translates to:
  /// **'Must contain at least one special character'**
  String get passwordCondition2;

  /// No description provided for @noInternetConnection.
  ///
  /// In en, this message translates to:
  /// **'connectionTimeOut'**
  String get noInternetConnection;

  /// No description provided for @tryAgain.
  ///
  /// In en, this message translates to:
  /// **'Try again'**
  String get tryAgain;

  /// No description provided for @errorMessage.
  ///
  /// In en, this message translates to:
  /// **'error occured'**
  String get errorMessage;

  /// No description provided for @connectionTimeOut.
  ///
  /// In en, this message translates to:
  /// **'connectionTimeOut'**
  String get connectionTimeOut;

  /// No description provided for @success.
  ///
  /// In en, this message translates to:
  /// **'success'**
  String get success;

  /// No description provided for @personalAccount.
  ///
  /// In en, this message translates to:
  /// **'My Account'**
  String get personalAccount;

  /// No description provided for @logout.
  ///
  /// In en, this message translates to:
  /// **'Logout'**
  String get logout;

  /// No description provided for @sign_in.
  ///
  /// In en, this message translates to:
  /// **'Sign In'**
  String get sign_in;

  /// No description provided for @forget_password.
  ///
  /// In en, this message translates to:
  /// **'Forget Password?'**
  String get forget_password;

  /// No description provided for @write_your_name.
  ///
  /// In en, this message translates to:
  /// **'Write your name'**
  String get write_your_name;

  /// No description provided for @write_your_password.
  ///
  /// In en, this message translates to:
  /// **'Write your password'**
  String get write_your_password;

  /// No description provided for @order_list.
  ///
  /// In en, this message translates to:
  /// **'Order List'**
  String get order_list;

  /// No description provided for @live_orders.
  ///
  /// In en, this message translates to:
  /// **'Live Orders'**
  String get live_orders;

  /// No description provided for @history_orders.
  ///
  /// In en, this message translates to:
  /// **'History Orders'**
  String get history_orders;

  /// No description provided for @date.
  ///
  /// In en, this message translates to:
  /// **'Date'**
  String get date;

  /// No description provided for @status.
  ///
  /// In en, this message translates to:
  /// **'Status'**
  String get status;

  /// No description provided for @qr_code.
  ///
  /// In en, this message translates to:
  /// **'QR Code'**
  String get qr_code;

  /// No description provided for @bulk_scan.
  ///
  /// In en, this message translates to:
  /// **'Bulk Scan'**
  String get bulk_scan;

  /// No description provided for @active.
  ///
  /// In en, this message translates to:
  /// **'Active'**
  String get active;

  /// No description provided for @sku.
  ///
  /// In en, this message translates to:
  /// **'SKU'**
  String get sku;

  /// No description provided for @product_stock.
  ///
  /// In en, this message translates to:
  /// **'Product Stock'**
  String get product_stock;

  /// No description provided for @search_product.
  ///
  /// In en, this message translates to:
  /// **'Search Product'**
  String get search_product;

  /// No description provided for @search.
  ///
  /// In en, this message translates to:
  /// **'Search'**
  String get search;

  /// No description provided for @warehouse.
  ///
  /// In en, this message translates to:
  /// **'Warehouse'**
  String get warehouse;

  /// No description provided for @customer.
  ///
  /// In en, this message translates to:
  /// **'Customer'**
  String get customer;

  /// No description provided for @name.
  ///
  /// In en, this message translates to:
  /// **'Name'**
  String get name;

  /// No description provided for @quantity.
  ///
  /// In en, this message translates to:
  /// **'Quantity'**
  String get quantity;

  /// No description provided for @time.
  ///
  /// In en, this message translates to:
  /// **'Time'**
  String get time;

  /// No description provided for @price.
  ///
  /// In en, this message translates to:
  /// **'Price'**
  String get price;

  /// No description provided for @import_export.
  ///
  /// In en, this message translates to:
  /// **'Import_Export'**
  String get import_export;

  /// No description provided for @your_name.
  ///
  /// In en, this message translates to:
  /// **'Your Name'**
  String get your_name;

  /// No description provided for @your_password.
  ///
  /// In en, this message translates to:
  /// **'Your Password'**
  String get your_password;

  /// No description provided for @sign_out.
  ///
  /// In en, this message translates to:
  /// **'Sign Out'**
  String get sign_out;

  /// No description provided for @hello.
  ///
  /// In en, this message translates to:
  /// **'hello'**
  String get hello;

  /// No description provided for @profile.
  ///
  /// In en, this message translates to:
  /// **'Profile'**
  String get profile;

  /// No description provided for @ready_to_pickup.
  ///
  /// In en, this message translates to:
  /// **'Ready to pickup'**
  String get ready_to_pickup;

  /// No description provided for @ready_to_return.
  ///
  /// In en, this message translates to:
  /// **'Ready to return'**
  String get ready_to_return;

  /// No description provided for @product_list.
  ///
  /// In en, this message translates to:
  /// **'Product List'**
  String get product_list;

  /// No description provided for @ready_list.
  ///
  /// In en, this message translates to:
  /// **'Ready List'**
  String get ready_list;

  /// No description provided for @search_sku_name.
  ///
  /// In en, this message translates to:
  /// **'Search SKU/Name'**
  String get search_sku_name;

  /// No description provided for @scanner.
  ///
  /// In en, this message translates to:
  /// **'Scanner'**
  String get scanner;

  /// No description provided for @summary.
  ///
  /// In en, this message translates to:
  /// **'Summary'**
  String get summary;

  /// No description provided for @order_number.
  ///
  /// In en, this message translates to:
  /// **'Order Number: '**
  String get order_number;

  /// No description provided for @customer_details.
  ///
  /// In en, this message translates to:
  /// **'Customer details'**
  String get customer_details;

  /// No description provided for @barcode.
  ///
  /// In en, this message translates to:
  /// **'Barcode'**
  String get barcode;

  /// No description provided for @picked_item.
  ///
  /// In en, this message translates to:
  /// **'Picked Item'**
  String get picked_item;

  /// No description provided for @picked.
  ///
  /// In en, this message translates to:
  /// **'Picked'**
  String get picked;

  /// No description provided for @picked_up.
  ///
  /// In en, this message translates to:
  /// **'Picked Up'**
  String get picked_up;

  /// No description provided for @code.
  ///
  /// In en, this message translates to:
  /// **'Code'**
  String get code;

  /// No description provided for @item_count.
  ///
  /// In en, this message translates to:
  /// **'Item Count'**
  String get item_count;

  /// No description provided for @product_count.
  ///
  /// In en, this message translates to:
  /// **'Product Count'**
  String get product_count;

  /// No description provided for @product.
  ///
  /// In en, this message translates to:
  /// **'Product'**
  String get product;

  /// No description provided for @item.
  ///
  /// In en, this message translates to:
  /// **'Item'**
  String get item;

  /// No description provided for @email_or_phone_number.
  ///
  /// In en, this message translates to:
  /// **'Email or phone number'**
  String get email_or_phone_number;

  /// No description provided for @email_error_message.
  ///
  /// In en, this message translates to:
  /// **'You must fill username input'**
  String get email_error_message;

  /// No description provided for @password_error_message.
  ///
  /// In en, this message translates to:
  /// **'You must fill password input'**
  String get password_error_message;

  /// No description provided for @send.
  ///
  /// In en, this message translates to:
  /// **'Send'**
  String get send;

  /// No description provided for @forget_password_error_message.
  ///
  /// In en, this message translates to:
  /// **'You must enter phone number or valid email input'**
  String get forget_password_error_message;

  /// No description provided for @check_sms.
  ///
  /// In en, this message translates to:
  /// **'Check The SMS'**
  String get check_sms;

  /// No description provided for @phone_number_error_message.
  ///
  /// In en, this message translates to:
  /// **'You must enter phone number input'**
  String get phone_number_error_message;

  /// No description provided for @verification_code.
  ///
  /// In en, this message translates to:
  /// **'Verification Code'**
  String get verification_code;

  /// No description provided for @write_phone_number.
  ///
  /// In en, this message translates to:
  /// **'Write your phone number'**
  String get write_phone_number;

  /// No description provided for @write_new_password.
  ///
  /// In en, this message translates to:
  /// **'Write the new password'**
  String get write_new_password;

  /// No description provided for @confirm_new_password.
  ///
  /// In en, this message translates to:
  /// **'Confirm the new password'**
  String get confirm_new_password;

  /// No description provided for @confirm_new_password_error_message.
  ///
  /// In en, this message translates to:
  /// **'You must fill confirm new password input'**
  String get confirm_new_password_error_message;

  /// No description provided for @point_your_device.
  ///
  /// In en, this message translates to:
  /// **'Point your device at the product to scanned'**
  String get point_your_device;

  /// No description provided for @you_can_easily_scan.
  ///
  /// In en, this message translates to:
  /// **'You can easily scan your item to check availiability'**
  String get you_can_easily_scan;

  /// No description provided for @order_must_be_scanned.
  ///
  /// In en, this message translates to:
  /// **'All products for this order must be scanned'**
  String get order_must_be_scanned;

  /// No description provided for @confirm.
  ///
  /// In en, this message translates to:
  /// **'Confirm'**
  String get confirm;

  /// No description provided for @history.
  ///
  /// In en, this message translates to:
  /// **'History'**
  String get history;

  /// No description provided for @scan.
  ///
  /// In en, this message translates to:
  /// **'Scan'**
  String get scan;

  /// No description provided for @home.
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get home;

  /// No description provided for @check.
  ///
  /// In en, this message translates to:
  /// **'Check'**
  String get check;

  /// No description provided for @address.
  ///
  /// In en, this message translates to:
  /// **'Address'**
  String get address;

  /// No description provided for @warning.
  ///
  /// In en, this message translates to:
  /// **'Warning'**
  String get warning;

  /// No description provided for @over_quantity.
  ///
  /// In en, this message translates to:
  /// **'You erased an extra piece of the required quantity of the product'**
  String get over_quantity;

  /// No description provided for @returned_done.
  ///
  /// In en, this message translates to:
  /// **'Returned done.'**
  String get returned_done;

  /// No description provided for @return_it.
  ///
  /// In en, this message translates to:
  /// **'Return it'**
  String get return_it;

  /// No description provided for @scan_more.
  ///
  /// In en, this message translates to:
  /// **'Scan More'**
  String get scan_more;

  /// No description provided for @saveChanges.
  ///
  /// In en, this message translates to:
  /// **'Save changes'**
  String get saveChanges;

  /// No description provided for @language.
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get language;

  /// No description provided for @curLang.
  ///
  /// In en, this message translates to:
  /// **'English'**
  String get curLang;

  /// No description provided for @profileDetails.
  ///
  /// In en, this message translates to:
  /// **'Profile details'**
  String get profileDetails;

  /// No description provided for @userName.
  ///
  /// In en, this message translates to:
  /// **'Username'**
  String get userName;

  /// No description provided for @phoneNumber.
  ///
  /// In en, this message translates to:
  /// **'Phone number'**
  String get phoneNumber;

  /// No description provided for @email.
  ///
  /// In en, this message translates to:
  /// **'Email'**
  String get email;

  /// No description provided for @requiredField.
  ///
  /// In en, this message translates to:
  /// **'Required field'**
  String get requiredField;

  /// No description provided for @enterAValidPhoneNumberOrMail.
  ///
  /// In en, this message translates to:
  /// **'Enter a valid phone number or email'**
  String get enterAValidPhoneNumberOrMail;

  /// No description provided for @pleaseEnterCode.
  ///
  /// In en, this message translates to:
  /// **'Please enter code'**
  String get pleaseEnterCode;

  /// No description provided for @confirmPasswordError.
  ///
  /// In en, this message translates to:
  /// **'Confirm password does not match password'**
  String get confirmPasswordError;

  /// No description provided for @passwordError.
  ///
  /// In en, this message translates to:
  /// **'Password must be more than 8 characters'**
  String get passwordError;

  /// No description provided for @shelf.
  ///
  /// In en, this message translates to:
  /// **'Shelf'**
  String get shelf;

  /// No description provided for @welcomeToPaploehita.
  ///
  /// In en, this message translates to:
  /// **'Welcome to Paploehita'**
  String get welcomeToPaploehita;

  /// No description provided for @openYourStore.
  ///
  /// In en, this message translates to:
  /// **'Open your store'**
  String get openYourStore;

  /// No description provided for @login.
  ///
  /// In en, this message translates to:
  /// **'Login'**
  String get login;

  /// No description provided for @addToBabloshita.
  ///
  /// In en, this message translates to:
  /// **'Add to Babloshita'**
  String get addToBabloshita;

  /// No description provided for @tobeMarkter.
  ///
  /// In en, this message translates to:
  /// **'To be Marketer'**
  String get tobeMarkter;

  /// No description provided for @skip.
  ///
  /// In en, this message translates to:
  /// **'Skip'**
  String get skip;

  /// No description provided for @loginNowandRegister.
  ///
  /// In en, this message translates to:
  /// **'Login Now and Late Register'**
  String get loginNowandRegister;

  /// No description provided for @dontHaveAccount.
  ///
  /// In en, this message translates to:
  /// **'Don\'t have an account?'**
  String get dontHaveAccount;

  /// No description provided for @createAccount.
  ///
  /// In en, this message translates to:
  /// **'Create Account'**
  String get createAccount;

  /// No description provided for @enterEmail.
  ///
  /// In en, this message translates to:
  /// **'Enter Email'**
  String get enterEmail;

  /// No description provided for @orLoginWith.
  ///
  /// In en, this message translates to:
  /// **'or Login with'**
  String get orLoginWith;

  /// No description provided for @facebook.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook;

  /// No description provided for @haveAccount.
  ///
  /// In en, this message translates to:
  /// **'Already have an account?'**
  String get haveAccount;

  /// No description provided for @joinToDriver.
  ///
  /// In en, this message translates to:
  /// **'Join To Drivers'**
  String get joinToDriver;

  /// No description provided for @fillform.
  ///
  /// In en, this message translates to:
  /// **'Apply for a delivery job via this form and the Bablushita team will contact you.'**
  String get fillform;

  /// No description provided for @signinAsMarketer.
  ///
  /// In en, this message translates to:
  /// **'Sign in as marketer'**
  String get signinAsMarketer;

  /// No description provided for @fillformMarketer.
  ///
  /// In en, this message translates to:
  /// **'Register and join the Bablushita community as an affiliate marketer and start marketing products and earning commissions.'**
  String get fillformMarketer;
}

class _TranslationsDelegate extends LocalizationsDelegate<Translations> {
  const _TranslationsDelegate();

  @override
  Future<Translations> load(Locale locale) {
    return SynchronousFuture<Translations>(lookupTranslations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['ar', 'en'].contains(locale.languageCode);

  @override
  bool shouldReload(_TranslationsDelegate old) => false;
}

Translations lookupTranslations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ar': return TranslationsAr();
    case 'en': return TranslationsEn();
  }

  throw FlutterError(
    'Translations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
