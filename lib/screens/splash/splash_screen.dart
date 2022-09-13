import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            FlutterLogo(size: 100),
          ],
        ),
      ),
    );
  }
}

class Init {
  Init._();
  static final instance = Init._();
  Future initialize() async {
    await Future.delayed(const Duration(milliseconds: 1500));
  }
}
