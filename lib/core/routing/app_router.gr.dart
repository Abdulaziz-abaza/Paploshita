// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i22;
import 'package:clean_arc/core/presentation/widget/custom_nav_bar.dart' as _i4;
import 'package:clean_arc/features/applications/applications_view.dart' as _i1;
import 'package:clean_arc/features/auth_feature/view/Cart/Cart_view.dart'
    as _i2;
import 'package:clean_arc/features/auth_feature/view/forgt_password/confirm_otp_code_view.dart'
    as _i3;
import 'package:clean_arc/features/auth_feature/view/forgt_password/forget_password1_view.dart'
    as _i6;
import 'package:clean_arc/features/auth_feature/view/forgt_password/rest_password_view.dart'
    as _i17;
import 'package:clean_arc/features/auth_feature/view/joinToDriver/joinToDriver_view.dart'
    as _i8;
import 'package:clean_arc/features/auth_feature/view/login/login_view.dart'
    as _i9;
import 'package:clean_arc/features/auth_feature/view/openNewStore/openNewStore_view.dart'
    as _i12;
import 'package:clean_arc/features/auth_feature/view/openStore/openStore_view.dart'
    as _i13;
import 'package:clean_arc/features/auth_feature/view/Payment/Payment_view.dart'
    as _i14;
import 'package:clean_arc/features/auth_feature/view/regiester/regiester_view.dart'
    as _i15;
import 'package:clean_arc/features/auth_feature/view/toBeMarkter/toBeMarkter_view.dart'
    as _i20;
import 'package:clean_arc/features/detiels_product/detiels_product_view.dart'
    as _i5;
import 'package:clean_arc/features/home_feature/presentation/view/home_view.dart'
    as _i7;
import 'package:clean_arc/features/menu/menu_view.dart' as _i10;
import 'package:clean_arc/features/rename/Rename_view.dart' as _i16;
import 'package:clean_arc/features/sales_feature/sales_feature_view.dart'
    as _i18;
import 'package:clean_arc/features/splash_feature/presentation/view/componant/welcomBack.dart'
    as _i21;
import 'package:clean_arc/features/splash_feature/presentation/view/onboarding_view.dart'
    as _i11;
import 'package:clean_arc/features/splash_feature/presentation/view/splash_screen.dart'
    as _i19;
import 'package:flutter/material.dart' as _i23;

abstract class $AppRouter extends _i22.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i22.PageFactory> pagesMap = {
    ApplicationsViewRoute.name: (routeData) {
      return _i22.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.ApplicationsView(),
      );
    },
    CartViewRoute.name: (routeData) {
      return _i22.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.CartView(),
      );
    },
    ConfirmOtpViewRoute.name: (routeData) {
      return _i22.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.ConfirmOtpView(),
      );
    },
    CustomNavBarViewRoute.name: (routeData) {
      return _i22.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.CustomNavBarView(),
      );
    },
    DetielsProductViewRoute.name: (routeData) {
      final args = routeData.argsAs<DetielsProductViewRouteArgs>();
      return _i22.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i5.DetielsProductView(
          key: args.key,
          title: args.title,
          imageUrl: args.imageUrl,
          oldPrice: args.oldPrice,
          newPrice: args.newPrice,
          rating: args.rating,
          discount: args.discount,
          isFavorite: args.isFavorite,
        ),
      );
    },
    ForgetPasswordViewRoute.name: (routeData) {
      final args = routeData.argsAs<ForgetPasswordViewRouteArgs>(
          orElse: () => const ForgetPasswordViewRouteArgs());
      return _i22.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i6.ForgetPasswordView(key: args.key),
      );
    },
    HomeViewRoute.name: (routeData) {
      return _i22.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.HomeView(),
      );
    },
    JointodriverViewRoute.name: (routeData) {
      return _i22.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.JointodriverView(),
      );
    },
    LoginViewRoute.name: (routeData) {
      return _i22.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.LoginView(),
      );
    },
    MenuViewRoute.name: (routeData) {
      return _i22.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i10.MenuView(),
      );
    },
    OnBoardingViewRoute.name: (routeData) {
      return _i22.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i11.OnBoardingView(),
      );
    },
    OpenNewStoreViewRoute.name: (routeData) {
      return _i22.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i12.OpenNewStoreView(),
      );
    },
    OpenstoreViewRoute.name: (routeData) {
      return _i22.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i13.OpenstoreView(),
      );
    },
    PaymentViewRoute.name: (routeData) {
      return _i22.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i14.PaymentView(),
      );
    },
    RegiesterViewRoute.name: (routeData) {
      return _i22.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i15.RegiesterView(),
      );
    },
    RenameViewRoute.name: (routeData) {
      return _i22.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i16.RenameView(),
      );
    },
    ResetPasswordViewRoute.name: (routeData) {
      final args = routeData.argsAs<ResetPasswordViewRouteArgs>(
          orElse: () => const ResetPasswordViewRouteArgs());
      return _i22.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i17.ResetPasswordView(key: args.key),
      );
    },
    SalesFeatureViewRoute.name: (routeData) {
      return _i22.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i18.SalesFeatureView(),
      );
    },
    SplashViewRoute.name: (routeData) {
      return _i22.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i19.SplashView(),
      );
    },
    TobemarkterViewRoute.name: (routeData) {
      return _i22.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i20.TobemarkterView(),
      );
    },
    WelcomeBack.name: (routeData) {
      final args = routeData.argsAs<WelcomeBackArgs>(
          orElse: () => const WelcomeBackArgs());
      return _i22.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i21.welcomeBack(key: args.key),
      );
    },
  };
}

/// generated route for
/// [_i1.ApplicationsView]
class ApplicationsViewRoute extends _i22.PageRouteInfo<void> {
  const ApplicationsViewRoute({List<_i22.PageRouteInfo>? children})
      : super(
          ApplicationsViewRoute.name,
          initialChildren: children,
        );

  static const String name = 'ApplicationsViewRoute';

  static const _i22.PageInfo<void> page = _i22.PageInfo<void>(name);
}

/// generated route for
/// [_i2.CartView]
class CartViewRoute extends _i22.PageRouteInfo<void> {
  const CartViewRoute({List<_i22.PageRouteInfo>? children})
      : super(
          CartViewRoute.name,
          initialChildren: children,
        );

  static const String name = 'CartViewRoute';

  static const _i22.PageInfo<void> page = _i22.PageInfo<void>(name);
}

/// generated route for
/// [_i3.ConfirmOtpView]
class ConfirmOtpViewRoute extends _i22.PageRouteInfo<void> {
  const ConfirmOtpViewRoute({List<_i22.PageRouteInfo>? children})
      : super(
          ConfirmOtpViewRoute.name,
          initialChildren: children,
        );

  static const String name = 'ConfirmOtpViewRoute';

  static const _i22.PageInfo<void> page = _i22.PageInfo<void>(name);
}

/// generated route for
/// [_i4.CustomNavBarView]
class CustomNavBarViewRoute extends _i22.PageRouteInfo<void> {
  const CustomNavBarViewRoute({List<_i22.PageRouteInfo>? children})
      : super(
          CustomNavBarViewRoute.name,
          initialChildren: children,
        );

  static const String name = 'CustomNavBarViewRoute';

  static const _i22.PageInfo<void> page = _i22.PageInfo<void>(name);
}

/// generated route for
/// [_i5.DetielsProductView]
class DetielsProductViewRoute
    extends _i22.PageRouteInfo<DetielsProductViewRouteArgs> {
  DetielsProductViewRoute({
    _i23.Key? key,
    required String title,
    required String imageUrl,
    required String oldPrice,
    required String newPrice,
    required double rating,
    required String discount,
    bool isFavorite = false,
    List<_i22.PageRouteInfo>? children,
  }) : super(
          DetielsProductViewRoute.name,
          args: DetielsProductViewRouteArgs(
            key: key,
            title: title,
            imageUrl: imageUrl,
            oldPrice: oldPrice,
            newPrice: newPrice,
            rating: rating,
            discount: discount,
            isFavorite: isFavorite,
          ),
          initialChildren: children,
        );

  static const String name = 'DetielsProductViewRoute';

  static const _i22.PageInfo<DetielsProductViewRouteArgs> page =
      _i22.PageInfo<DetielsProductViewRouteArgs>(name);
}

class DetielsProductViewRouteArgs {
  const DetielsProductViewRouteArgs({
    this.key,
    required this.title,
    required this.imageUrl,
    required this.oldPrice,
    required this.newPrice,
    required this.rating,
    required this.discount,
    this.isFavorite = false,
  });

  final _i23.Key? key;

  final String title;

  final String imageUrl;

  final String oldPrice;

  final String newPrice;

  final double rating;

  final String discount;

  final bool isFavorite;

  @override
  String toString() {
    return 'DetielsProductViewRouteArgs{key: $key, title: $title, imageUrl: $imageUrl, oldPrice: $oldPrice, newPrice: $newPrice, rating: $rating, discount: $discount, isFavorite: $isFavorite}';
  }
}

/// generated route for
/// [_i6.ForgetPasswordView]
class ForgetPasswordViewRoute
    extends _i22.PageRouteInfo<ForgetPasswordViewRouteArgs> {
  ForgetPasswordViewRoute({
    _i23.Key? key,
    List<_i22.PageRouteInfo>? children,
  }) : super(
          ForgetPasswordViewRoute.name,
          args: ForgetPasswordViewRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'ForgetPasswordViewRoute';

  static const _i22.PageInfo<ForgetPasswordViewRouteArgs> page =
      _i22.PageInfo<ForgetPasswordViewRouteArgs>(name);
}

class ForgetPasswordViewRouteArgs {
  const ForgetPasswordViewRouteArgs({this.key});

  final _i23.Key? key;

  @override
  String toString() {
    return 'ForgetPasswordViewRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i7.HomeView]
class HomeViewRoute extends _i22.PageRouteInfo<void> {
  const HomeViewRoute({List<_i22.PageRouteInfo>? children})
      : super(
          HomeViewRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeViewRoute';

  static const _i22.PageInfo<void> page = _i22.PageInfo<void>(name);
}

/// generated route for
/// [_i8.JointodriverView]
class JointodriverViewRoute extends _i22.PageRouteInfo<void> {
  const JointodriverViewRoute({List<_i22.PageRouteInfo>? children})
      : super(
          JointodriverViewRoute.name,
          initialChildren: children,
        );

  static const String name = 'JointodriverViewRoute';

  static const _i22.PageInfo<void> page = _i22.PageInfo<void>(name);
}

/// generated route for
/// [_i9.LoginView]
class LoginViewRoute extends _i22.PageRouteInfo<void> {
  const LoginViewRoute({List<_i22.PageRouteInfo>? children})
      : super(
          LoginViewRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginViewRoute';

  static const _i22.PageInfo<void> page = _i22.PageInfo<void>(name);
}

/// generated route for
/// [_i10.MenuView]
class MenuViewRoute extends _i22.PageRouteInfo<void> {
  const MenuViewRoute({List<_i22.PageRouteInfo>? children})
      : super(
          MenuViewRoute.name,
          initialChildren: children,
        );

  static const String name = 'MenuViewRoute';

  static const _i22.PageInfo<void> page = _i22.PageInfo<void>(name);
}

/// generated route for
/// [_i11.OnBoardingView]
class OnBoardingViewRoute extends _i22.PageRouteInfo<void> {
  const OnBoardingViewRoute({List<_i22.PageRouteInfo>? children})
      : super(
          OnBoardingViewRoute.name,
          initialChildren: children,
        );

  static const String name = 'OnBoardingViewRoute';

  static const _i22.PageInfo<void> page = _i22.PageInfo<void>(name);
}

/// generated route for
/// [_i12.OpenNewStoreView]
class OpenNewStoreViewRoute extends _i22.PageRouteInfo<void> {
  const OpenNewStoreViewRoute({List<_i22.PageRouteInfo>? children})
      : super(
          OpenNewStoreViewRoute.name,
          initialChildren: children,
        );

  static const String name = 'OpenNewStoreViewRoute';

  static const _i22.PageInfo<void> page = _i22.PageInfo<void>(name);
}

/// generated route for
/// [_i13.OpenstoreView]
class OpenstoreViewRoute extends _i22.PageRouteInfo<void> {
  const OpenstoreViewRoute({List<_i22.PageRouteInfo>? children})
      : super(
          OpenstoreViewRoute.name,
          initialChildren: children,
        );

  static const String name = 'OpenstoreViewRoute';

  static const _i22.PageInfo<void> page = _i22.PageInfo<void>(name);
}

/// generated route for
/// [_i14.PaymentView]
class PaymentViewRoute extends _i22.PageRouteInfo<void> {
  const PaymentViewRoute({List<_i22.PageRouteInfo>? children})
      : super(
          PaymentViewRoute.name,
          initialChildren: children,
        );

  static const String name = 'PaymentViewRoute';

  static const _i22.PageInfo<void> page = _i22.PageInfo<void>(name);
}

/// generated route for
/// [_i15.RegiesterView]
class RegiesterViewRoute extends _i22.PageRouteInfo<void> {
  const RegiesterViewRoute({List<_i22.PageRouteInfo>? children})
      : super(
          RegiesterViewRoute.name,
          initialChildren: children,
        );

  static const String name = 'RegiesterViewRoute';

  static const _i22.PageInfo<void> page = _i22.PageInfo<void>(name);
}

/// generated route for
/// [_i16.RenameView]
class RenameViewRoute extends _i22.PageRouteInfo<void> {
  const RenameViewRoute({List<_i22.PageRouteInfo>? children})
      : super(
          RenameViewRoute.name,
          initialChildren: children,
        );

  static const String name = 'RenameViewRoute';

  static const _i22.PageInfo<void> page = _i22.PageInfo<void>(name);
}

/// generated route for
/// [_i17.ResetPasswordView]
class ResetPasswordViewRoute
    extends _i22.PageRouteInfo<ResetPasswordViewRouteArgs> {
  ResetPasswordViewRoute({
    _i23.Key? key,
    List<_i22.PageRouteInfo>? children,
  }) : super(
          ResetPasswordViewRoute.name,
          args: ResetPasswordViewRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'ResetPasswordViewRoute';

  static const _i22.PageInfo<ResetPasswordViewRouteArgs> page =
      _i22.PageInfo<ResetPasswordViewRouteArgs>(name);
}

class ResetPasswordViewRouteArgs {
  const ResetPasswordViewRouteArgs({this.key});

  final _i23.Key? key;

  @override
  String toString() {
    return 'ResetPasswordViewRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i18.SalesFeatureView]
class SalesFeatureViewRoute extends _i22.PageRouteInfo<void> {
  const SalesFeatureViewRoute({List<_i22.PageRouteInfo>? children})
      : super(
          SalesFeatureViewRoute.name,
          initialChildren: children,
        );

  static const String name = 'SalesFeatureViewRoute';

  static const _i22.PageInfo<void> page = _i22.PageInfo<void>(name);
}

/// generated route for
/// [_i19.SplashView]
class SplashViewRoute extends _i22.PageRouteInfo<void> {
  const SplashViewRoute({List<_i22.PageRouteInfo>? children})
      : super(
          SplashViewRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashViewRoute';

  static const _i22.PageInfo<void> page = _i22.PageInfo<void>(name);
}

/// generated route for
/// [_i20.TobemarkterView]
class TobemarkterViewRoute extends _i22.PageRouteInfo<void> {
  const TobemarkterViewRoute({List<_i22.PageRouteInfo>? children})
      : super(
          TobemarkterViewRoute.name,
          initialChildren: children,
        );

  static const String name = 'TobemarkterViewRoute';

  static const _i22.PageInfo<void> page = _i22.PageInfo<void>(name);
}

/// generated route for
/// [_i21.welcomeBack]
class WelcomeBack extends _i22.PageRouteInfo<WelcomeBackArgs> {
  WelcomeBack({
    _i23.Key? key,
    List<_i22.PageRouteInfo>? children,
  }) : super(
          WelcomeBack.name,
          args: WelcomeBackArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'WelcomeBack';

  static const _i22.PageInfo<WelcomeBackArgs> page =
      _i22.PageInfo<WelcomeBackArgs>(name);
}

class WelcomeBackArgs {
  const WelcomeBackArgs({this.key});

  final _i23.Key? key;

  @override
  String toString() {
    return 'WelcomeBackArgs{key: $key}';
  }
}
