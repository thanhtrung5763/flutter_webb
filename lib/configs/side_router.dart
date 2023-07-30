import 'package:flutter_webb/screens/dashboard/dashboard_screen.dart';
import 'package:flutter_webb/screens/orders/orders_screen.dart';
import 'package:go_router/go_router.dart';

class SideRouter {
  late final GoRouter router = GoRouter(debugLogDiagnostics: true, routes: <RouteBase>[
    GoRoute(
      path: '/',
      name: 'home',
      builder: (context, state) => DashBoardScreen(),
    ),
  ]);
}
