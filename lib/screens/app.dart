
import 'package:animation_work/screens/login/login_screen.dart';
import 'package:animation_work/screens/splash/splash_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import '../utils/navigation_util.dart';

final RouteObserver<PageRoute> routeObserver = RouteObserver<PageRoute>();

class App extends StatelessWidget {
  App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Init.instance.initialize(),
      builder: (context, AsyncSnapshot snapshot) => ScreenUtilInit(
        builder: (context, widget) => MaterialApp(
          title: "Space Work",
          // theme: AppTheme().theme,
          // locale: context.locale,
          // localizationsDelegates: context.localizationDelegates,
          navigatorKey: NavigationUtil.navigatorKey,
          navigatorObservers: [routeObserver],
          debugShowCheckedModeBanner: false,
          // supportedLocales: context.supportedLocales,
          // localeResolutionCallback: (locale, supportedLocales) => context.fallbackLocale,
          home: const LoginScreen(),
          onGenerateRoute: NavigationUtil.onGenerateRoute,
        ),
      ),
    );
  }
}
