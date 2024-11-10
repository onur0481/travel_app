import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travel_app/app/app_locator.dart';
import 'package:travel_app/app/init/app_initialize.dart';
import 'package:travel_app/app/init/language/app_localization.dart';
import 'package:travel_app/app/init/theme/app_themes.dart';
import 'package:travel_app/app/utilities/enums/design_size.dart';
import 'package:travel_app/services/app/app_navigation_service.dart';

Future<void> main() async {
  AppLocator.setup();
  await ApplicationInitialize().make();
  runApp(ProductLocalization(child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: DesignSize.designSize.size,
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (BuildContext context, Widget? child) => GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus,
        child: MaterialApp.router(
          debugShowCheckedModeBanner: false,
          title: 'Travel App',
          routerConfig: AppLocator.locator<AppNavigationService>().router,
          theme: AppThemes.lightTheme,
          localizationsDelegates: context.localizationDelegates,
          supportedLocales: context.supportedLocales,
          locale: context.locale,
        ),
      ),
    );
  }
}
