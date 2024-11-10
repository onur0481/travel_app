import 'package:go_router/go_router.dart';
import 'package:travel_app/ui/views/dashboard/dashboard_view.dart';

final List<GoRoute> appRoutes = [
  GoRoute(path: '/dashboard', builder: (context, state) => const DashboardView()),
];
