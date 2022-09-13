import 'dart:async';
import 'package:animation_work/screens/app.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  // await EasyLocalization.ensureInitialized();
  runZonedGuarded<Future<void>>(
    () async {
      runApp(App());
    },
    (_, __) {},
    zoneSpecification: ZoneSpecification(
        print: (Zone self, ZoneDelegate parent, Zone zone, String message) {
      if (kDebugMode) {
        parent.print(zone, '${"Space Work"} ${DateTime.now()}: $message');
      }
    }),
  );
}
