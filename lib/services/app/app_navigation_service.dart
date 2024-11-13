import 'package:go_router/go_router.dart';
import 'package:travel_app/app/utilities/constant/app_routes_constant.dart';
import 'package:travel_app/services/app/app_routes.dart';

class AppNavigationService {
  late final GoRouter _router;
  AppNavigationService() {
    _router = GoRouter(
      routes: appRoutes,
      initialLocation: AppRoutesConstant.dashboard,
    );
  }

  GoRouter get router => _router;

  void navigateTo(String routeName, {Object? arguments}) {
    _router.go(routeName, extra: arguments);
  }

  void goBack() {
    _router.pop();
  }
}
