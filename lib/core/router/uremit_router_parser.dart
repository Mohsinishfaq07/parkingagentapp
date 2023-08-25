import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'models/page_config.dart';
import 'models/page_paths.dart';
import 'pages.dart';

class UremitRouterParser extends RouteInformationParser<PageConfiguration> {
  @override
  Future<PageConfiguration> parseRouteInformation(
      RouteInformation routeInformation) {
    final uri = Uri.parse(routeInformation.location ?? '');

    if (uri.pathSegments.isEmpty) {
      return SynchronousFuture(PageConfigs.splashPageConfig);
    }

    final path = '/' + uri.pathSegments[0];

    switch (path) {
      case PagePaths.splashPagePath:
        return SynchronousFuture(PageConfigs.splashPageConfig);
      default:
        return SynchronousFuture(PageConfigs.splashPageConfig);
    }
  }

  @override
  RouteInformation restoreRouteInformation(PageConfiguration configuration) {
    switch (configuration.uiPage) {
      case Pages.splashPage:
        return const RouteInformation(location: PagePaths.splashPagePath);
      case Pages.signInScreen:
        return const RouteInformation(location: PagePaths.signInScreenPagePath);
      case Pages.homeScreen:
        return const RouteInformation(location: PagePaths.homeScreenPagePath);
      case Pages.historyScreen:
        return const RouteInformation(
            location: PagePaths.historyScreenPagePath);
      case Pages.rentACarScreen:
        return const RouteInformation(
            location: PagePaths.rentACarScreenPagePath);

      case Pages.carDetail:
        return const RouteInformation(
            location: PagePaths.carDetailScreenPagePath);

      case Pages.postCarDetail:
        return const RouteInformation(
            location: PagePaths.postCarDetailScreenPagePath);
      case Pages.postCarDetail1:
        return const RouteInformation(
            location: PagePaths.postCarDetail1ScreenPagePath);

      case Pages.signUpScreen:
        return const RouteInformation(location: PagePaths.signUpScreenPagePath);

      case Pages.otpScreen:
        return const RouteInformation(location: PagePaths.otpScreenPagePath);
      case Pages.forgotPasswordScreen:
        return const RouteInformation(location: PagePaths.forgotPasswordScreenPagePath);
        case Pages.resetPasswordScreen:
        return const RouteInformation(location: PagePaths.resetPasswordScreenPagePath);
        case Pages.hireACarScreen:
        return const RouteInformation(location: PagePaths.hireACarScreenPagePath);
        case Pages.acceptedScreen:
        return const RouteInformation(location: PagePaths.acceptedScreenPagePath);
        case Pages.rejectedScreen:
        return const RouteInformation(location: PagePaths.rejectedScreenPagePath);
     case Pages.pendingScreen:
        return const RouteInformation(location: PagePaths.pendingScreenPagePath);
    case Pages.bookingDetailScreen:
        return const RouteInformation(location: PagePaths.bookingDetailScreenPagePath);
    case Pages.confirmBookingDetailScreen:
        return const RouteInformation(location: PagePaths.confirmBookingDetailScreenPagePath);
    }
  }
}
