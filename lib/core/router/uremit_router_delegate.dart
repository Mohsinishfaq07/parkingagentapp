import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:sb_myreports/core/utils/extension/extensions.dart';
import 'package:sb_myreports/features/hire_a_car/presentation/pages/booking_detail_screen/booking_detail_screen.dart';
import 'package:sb_myreports/features/homeScreen/confirm_booking.dart';
import 'package:sb_myreports/features/homeScreen/home_screen.dart';
import 'package:sb_myreports/features/authentication/reset_password/reset_password.dart';
import 'package:sb_myreports/features/authentication/forgot_password/forget_password_screen.dart';
import 'package:sb_myreports/features/rentACar/accepted_screen.dart';
import 'package:sb_myreports/features/homeScreen/car_details.dart';
import 'package:sb_myreports/features/rentACar/pending_screen.dart';
import 'package:sb_myreports/features/rentACar/presentation/pages/post_car_detail.dart';
import 'package:sb_myreports/features/rentACar/history_screen.dart';
import 'package:sb_myreports/features/rentACar/presentation/pages/post_car_detail_1.dart';
import 'package:sb_myreports/features/rentACar/rejected_screen.dart';
import '../../features/authentication/signUp/presentation/pages/sign_up_screen.dart';
import '../../features/authentication/otp/presentation/pages/verify_your_mobile.dart';
import '../../features/authentication/sign_in/presentation/pages/sign_in.dart';
import '../../features/hire_a_car/presentation/pages/hire_a_car/hire_a_car.dart';
import '../../features/splash/presentation/pages/splash_screen.dart';
import '../utils/enums/page_state_enum.dart';
import '../utils/globals/globals.dart';
import 'app_state.dart';
import 'pages.dart';

BuildContext?
    globalHomeContext; // doing this to pop the bottom sheet on home screen

class UremitRouterDelegate extends RouterDelegate<PageConfiguration>
    with ChangeNotifier, PopNavigatorRouterDelegateMixin<PageConfiguration> {
  late final AppState appState;
  final List<Page> _pages = [];
  late BackButtonDispatcher backButtonDispatcher;

  List<MaterialPage> get pages => List.unmodifiable(_pages);

  UremitRouterDelegate(this.appState) {
    appState.addListener(() {
      notifyListeners();
    });
  }

  @override
  Widget build(BuildContext context) {
    /// Faulty Code will need to find a way to solve it
    appState.globalErrorShow = (value) {
      context.show(message: value);
    };

    return Container(
      key: ValueKey(pages.last.name),
      child: Navigator(
        key: navigatorKeyGlobal,
        onPopPage: _onPopPage,
        pages: buildPages(),
      ),
    );
  }

  List<Page> buildPages() {
    switch (appState.currentAction.state) {
      case PageState.none:
        break;
      case PageState.addPage:
        addPage(appState.currentAction.page!);
        break;
      case PageState.remove:
        removePage(appState.currentAction.page!);
        break;

      case PageState.pop:
        pop();
        break;
      case PageState.addAll:
        break;
      case PageState.addWidget:
        pushWidget(
            appState.currentAction.widget!, appState.currentAction.page!);
        break;
      case PageState.replace:
        replace(appState.currentAction.page!);
        break;
      case PageState.replaceAll:
        replaceAll(appState.currentAction.page!);
        break;
    }
    return List.of(_pages);
  }

  void replaceAll(PageConfiguration newRoute) {
    _pages.clear();
    setNewRoutePath(newRoute);
  }

  void replace(PageConfiguration newRoute) {
    if (_pages.isNotEmpty) {
      _pages.removeLast();
    }
    addPage(newRoute);
  }

  /// This method adds pages based on the PageConfig received
  /// [Input]: [PageConfiguration]
  void addPage(PageConfiguration pageConfig) {
    final shouldAddPage =
        _pages.isEmpty || (_pages.last.name != pageConfig.path);

    if (shouldAddPage) {
      switch (pageConfig.uiPage) {
        case Pages.splashPage:
          _addPageData(const SplashScreen(), pageConfig);
          // _addPageData(const DashboardPage(), pageConfig);
          break;
        case Pages.homeScreen:
          _addPageData(const HomeScreen(), pageConfig);
          // _addPageData(const DashboardPage(), pageConfig);
          break;
        // case Pages.rentACarScreen:
        // _addPageData(const RentACarScreen(), pageConfig);
        // // _addPageData(const DashboardPage(), pageConfig);
        // break;
        case Pages.historyScreen:
          _addPageData(const HistoryScreen(), pageConfig);
          // _addPageData(const DashboardPage(), pageConfig);
          break;
        case Pages.carDetail:
          _addPageData(const CarDetailScreen(), pageConfig);
          // _addPageData(const DashboardPage(), pageConfig);
          break;
        case Pages.postCarDetail:
          _addPageData(const PostCarDetailContent(), pageConfig);
          // _addPageData(const DashboardPage(), pageConfig);
          break;
        case Pages.postCarDetail1:
          _addPageData(const PostACarDetail1Screen(), pageConfig);
          // _addPageData(const DashboardPage(), pageConfig);
          break;
        case Pages.signInScreen:
          _addPageData(const SignInScreen(), pageConfig);
          // _addPageData(const DashboardPage(), pageConfig);
          break;
        case Pages.signUpScreen:
          _addPageData(const SignUpScreen(), pageConfig);
          // _addPageData(const DashboardPage(), pageConfig);
          break;
        case Pages.otpScreen:
          _addPageData(const OtpScreen(), pageConfig);
          // _addPageData(const DashboardPage(), pageConfig);
          break;
        case Pages.forgotPasswordScreen:
          _addPageData(const ForgotPasswordScreen(), pageConfig);
          // _addPageData(const DashboardPage(), pageConfig);
          break;
        case Pages.resetPasswordScreen:
          _addPageData(const ResetPasswordScreen(), pageConfig);
          // _addPageData(const DashboardPage(), pageConfig);
          break;
        case Pages.hireACarScreen:
          _addPageData(const HireACarScreen(), pageConfig);
          // _addPageData(const DashboardPage(), pageConfig);
          break;
        case Pages.acceptedScreen:
          _addPageData(const AcceptedScreen(), pageConfig);
          // _addPageData(const DashboardPage(), pageConfig);
          break;
        case Pages.rejectedScreen:
          _addPageData(const RejectedScreen(), pageConfig);
          // _addPageData(const DashboardPage(), pageConfig);
          break;
        case Pages.pendingScreen:
          _addPageData(const PendingScreen(), pageConfig);
          // _addPageData(const DashboardPage(), pageConfig);
          break;
        case Pages.bookingDetailScreen:
          _addPageData(const BookingDetailScreen(), pageConfig);
          // _addPageData(const DashboardPage(), pageConfig);
          break;
        case Pages.confirmBookingDetailScreen:
          _addPageData(const ConfirmBookingDetailSecondScreen(), pageConfig);
          // _addPageData(const DashboardPage(), pageConfig);
          break;
        case Pages.rentACarScreen:
          //
          break;
      }
    }
  }

  void _addPageData(Widget child, PageConfiguration pageConfig) {
    _pages.add(
      _createPage(child, pageConfig),
    );
  }

  void pushWidget(Widget child, PageConfiguration newRoute) {
    _addPageData(child, newRoute);
  }

  MaterialPage _createPage(Widget child, PageConfiguration pageConfig) {
    return MaterialPage(
        child: child,
        key: ValueKey(pageConfig.key),
        name: pageConfig.path,
        arguments: pageConfig);
  }

  bool _onPopPage(Route<dynamic> route, result) {
    final didPop = route.didPop(result);

    if (!didPop) {
      return false;
    }
    if (canPop()) {
      pop();
      return true;
    } else {
      return false;
    }
  }

  void pop() {
    if (globalHomeContext != null) {
      Navigator.of(globalHomeContext!).pop();
      globalHomeContext = null;
      return;
    }
    if (canPop()) {
      _removePage(_pages.last as MaterialPage);
    } else {
      // if (_pages.last.name != PagePaths.authWrapperPagePath) {
      //   _homeViewModel.onBottomNavTap(0);
      // }
    }
  }

  void removePage(PageConfiguration page) {
    if (_pages.isNotEmpty) {
      int index = _pages.indexWhere((element) => element.name == page.path);
      if (index != -1) {
        _pages.removeAt(index);
      }
    }
  }

  void _removePage(MaterialPage page) {
    _pages.remove(page);
    // notifyListeners();
  }

  bool canPop() {
    return _pages.length > 1;
  }

  @override
  Future<bool> popRoute() {
    if (canPop()) {
      _removePage(_pages.last as MaterialPage);
      return Future.value(true);
    }
    return Future.value(false);
  }

  @override
  Future<void> setNewRoutePath(PageConfiguration configuration) {
    final shouldAddPage =
        _pages.isEmpty || (_pages.last.name != configuration.path);

    if (!shouldAddPage) {
      return SynchronousFuture(null);
    }
    _pages.clear();
    addPage(configuration);

    return SynchronousFuture(null);
  }

  @override
  GlobalKey<NavigatorState>? get navigatorKey => navigatorKeyGlobal;
}
