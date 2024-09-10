import 'package:auto_route/auto_route.dart';
import 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'View,ViewRoute')
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: SplashViewRoute.page, initial: true),
        AutoRoute(
          page: OnBoardingViewRoute.page,
        ),
        AutoRoute(
          page: LoginViewRoute.page,
        ),
        AutoRoute(
          page: ForgetPasswordViewRoute.page,
        ),
        AutoRoute(
          page: ConfirmOtpViewRoute.page,
        ),
        AutoRoute(
          page: ResetPasswordViewRoute.page,
        ),
        AutoRoute(
          page: WelcomeBack.page,
        ),
        AutoRoute(
          page: RegiesterViewRoute.page,
        ),
        AutoRoute(
          page: OpenstoreViewRoute.page,
        ),
        AutoRoute(
          page: JointodriverViewRoute.page,
        ),
        AutoRoute(
          page: RenameViewRoute.page,
        ),
        AutoRoute(
          page: SalesFeatureViewRoute.page,
        ),
        AutoRoute(
          page: TobemarkterViewRoute.page,
        ),
        AutoRoute(
          page: ApplicationsViewRoute.page,
        ),
        AutoRoute(
          page: HomeViewRoute.page,
        ),
        AutoRoute(
          page: CustomNavBarViewRoute.page,
        ),
        AutoRoute(
          page: DetielsProductViewRoute.page,
        ),
        AutoRoute(
          page: OpenNewStoreViewRoute.page,
        ),
        AutoRoute(
          page: CartViewRoute.page,
        ),
        AutoRoute(
          page: MenuViewRoute.page,
        ),
        AutoRoute(
          page: MenuViewRoute.page,
        ),
        AutoRoute(
          page: PaymentViewRoute.page,
        ),
      ];
}
