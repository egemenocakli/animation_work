import 'package:animation_work/screens/login/login_screen.dart';
import 'package:flutter/material.dart';

class NavigationUtil {
  static final navigatorKey = GlobalKey<NavigatorState>();

  //Screens

  static const String loginScreen = "loginScreen";
  static const String signUpScreen = "signUpScreen";
  static const String licenceWebViewScreen = "licenceWebViewScreen";

  // static navigateToPageAndRemoveUntil(context, String pageName, {Object? arguments}) =>
  //     Navigator.pushNamedAndRemoveUntil(context, pageName, (Route<dynamic> route) => false, arguments: arguments);

  static _navigateToPage(context, String pageName, {Object? arguments}) => Navigator.pushNamed(context, pageName, arguments: arguments);

  // static _popAndNavigateToPage(context, String pageName, {Object? arguments}) => Navigator.popAndPushNamed(context, pageName, arguments: arguments);

  static navigateToBack(context, {dynamic value}) => Navigator.pop(context, value);

  //Navigate screens methods
  static navigateToLoginScreen(context) => _navigateToPage(context, loginScreen);

  static navigateToSignUpScreen(context) => _navigateToPage(context, signUpScreen);

  static navigateToSignUpLicenceWebView(context) => _navigateToPage(context, licenceWebViewScreen);

  static Route onGenerateRoute(settings) =>
      MaterialPageRoute(builder: (context) => _buildNavigationMap(context, settings), settings: RouteSettings(name: settings.name));

  static _buildNavigationMap(context, settings) {
    Widget page = const LoginScreen();

    switch (settings.name) {
      case loginScreen:
        page = const LoginScreen();
        break;

    }
    return page;
  }
}
