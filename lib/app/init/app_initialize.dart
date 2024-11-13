import 'dart:async';

import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:logger/logger.dart';
import 'package:travel_app/firebase_options.dart';

final class ApplicationInitialize {
  Future<void> make() async {
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
    await FirebaseAuth.instance.useAuthEmulator('localhost', 9099);
    await runZonedGuarded<Future<void>>(_initalize, (error, stack) {
      Logger().e(error);
    });
  }

  Future<void> _initalize() async {
    await EasyLocalization.ensureInitialized();
    await Future.wait([
      SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
    ]);

    FlutterError.onError = (details) {
      Logger().e(details.exceptionAsString());
    };

    _productEnvironmentWithContainer();
  }

  /// DO NOT CHANGE THIS METHOD
  void _productEnvironmentWithContainer() {
    // AppEnvironment.general();

    /// It must be call after [AppEnvironment.general()]
    // ProductContainer.setup();
  }
}
