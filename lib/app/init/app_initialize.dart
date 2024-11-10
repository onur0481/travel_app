import 'dart:async';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:logger/logger.dart';

final class ApplicationInitialize {
  Future<void> make() async {
    WidgetsFlutterBinding.ensureInitialized();
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
