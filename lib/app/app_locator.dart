import 'package:get_it/get_it.dart';
import 'package:travel_app/app/init/theme/text_styles/app_text_theme.dart';
import 'package:travel_app/services/app/app_navigation_service.dart';
import 'package:travel_app/ui/views/dashboard/dashboard_viewmodel.dart';

class AppLocator {
  static final GetIt _locator = GetIt.instance;

  // Singleton yapısı
  AppLocator._();

  static void setup() {
    // Servisleri ve view modelleri burada kaydedebilirsiniz
    _locator.registerLazySingleton(() => AppNavigationService());
    _locator.registerFactory(() => DashboardViewModel());
    _locator.registerLazySingleton(AppTextTheme.new);
  }

  static GetIt get locator => _locator;
}
