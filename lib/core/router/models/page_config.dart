import 'package:sb_myreports/core/router/models/page_keys.dart';
import 'package:sb_myreports/core/router/models/page_paths.dart';

import '../pages.dart';

class PageConfigs {
  static PageConfiguration splashPageConfig = const PageConfiguration(
      key: PageKeys.splashPageKey,
      path: PagePaths.splashPagePath,
      uiPage: Pages.splashPage);
  static PageConfiguration homeScreenPageConfig = const PageConfiguration(
      key: PageKeys.homeScreenPageKey,
      path: PagePaths.homeScreenPagePath,
      uiPage: Pages.homeScreen);
  static PageConfiguration historyScreenPageConfig = const PageConfiguration(
      key: PageKeys.historyScreenPageKey,
      path: PagePaths.historyScreenPagePath,
      uiPage: Pages.historyScreen);
  static PageConfiguration rentACarScreenPageConfig = const PageConfiguration(
      key: PageKeys.rentACarScreenPageKey,
      path: PagePaths.rentACarScreenPagePath,
      uiPage: Pages.rentACarScreen);
  static PageConfiguration carDetailsScreenPageConfig = const PageConfiguration(
      key: PageKeys.carDetailsScreenPageKey,
      path: PagePaths.carDetailScreenPagePath,
      uiPage: Pages.carDetail);
  static PageConfiguration postCarDetail1ScreenPageConfig = const PageConfiguration(
      key: PageKeys.postCarDetails1ScreenPageKey,
      path: PagePaths.postCarDetail1ScreenPagePath,
      uiPage: Pages.postCarDetail1);
  static PageConfiguration postCarDetailScreenPageConfig = const PageConfiguration(
      key: PageKeys.postCarDetailScreenPageKey,
      path: PagePaths.postCarDetailScreenPagePath,
      uiPage: Pages.postCarDetail);
  static PageConfiguration signInScreenPageConfig = const PageConfiguration(
      key: PageKeys.signInScreenPageKey,
      path: PagePaths.signInScreenPagePath,
      uiPage: Pages.signInScreen);
  static PageConfiguration signUpScreenPageConfig = const PageConfiguration(
      key: PageKeys.signUpScreenPageKey,
      path: PagePaths.signUpScreenPagePath,
      uiPage: Pages.signUpScreen);
  static PageConfiguration otpScreenPageConfig = const PageConfiguration(
      key: PageKeys.otpScreenPageKey,
      path: PagePaths.otpScreenPagePath,
      uiPage: Pages.otpScreen);
  static PageConfiguration forgotPasswordScreenPageConfig = const PageConfiguration(
      key: PageKeys.forgotPasswordScreenPageKey,
      path: PagePaths.forgotPasswordScreenPagePath,
      uiPage: Pages.forgotPasswordScreen);
  static PageConfiguration resetPasswordScreenPageConfig = const PageConfiguration(
      key: PageKeys.resetPasswordScreenPageKey,
      path: PagePaths.resetPasswordScreenPagePath,
      uiPage: Pages.resetPasswordScreen);
  static PageConfiguration hireACarScreenPageConfig = const PageConfiguration(
      key: PageKeys.hireACarScreenPageKey,
      path: PagePaths.hireACarScreenPagePath,
      uiPage: Pages.hireACarScreen);
  static PageConfiguration acceptedScreenPageConfig = const PageConfiguration(
      key: PageKeys.acceptedScreenPageKey,
      path: PagePaths.acceptedScreenPagePath,
      uiPage: Pages.acceptedScreen);
  static PageConfiguration rejectedScreenPageConfig = const PageConfiguration(
      key: PageKeys.rejectedScreenPageKey,
      path: PagePaths.rejectedScreenPagePath,
      uiPage: Pages.rejectedScreen);
  static PageConfiguration pendingScreenPageConfig = const PageConfiguration(
      key: PageKeys.pendingScreenPageKey,
      path: PagePaths.pendingScreenPagePath,
      uiPage: Pages.pendingScreen);
  static PageConfiguration bookingDetailScreenPageConfig = const PageConfiguration(
      key: PageKeys.bookingDetailScreenPageKey,
      path: PagePaths.bookingDetailScreenPagePath,
      uiPage: Pages.bookingDetailScreen);
  static PageConfiguration confirmBookingDetailScreenPageConfig = const PageConfiguration(
      key: PageKeys.confirmBookingDetailScreenPageKey,
      path: PagePaths.confirmBookingDetailScreenPagePath,
      uiPage: Pages.confirmBookingDetailScreen);
}
