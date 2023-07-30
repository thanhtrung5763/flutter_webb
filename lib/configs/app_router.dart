import 'package:flutter_webb/site_layout.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  late final GoRouter router = GoRouter(debugLogDiagnostics: true, routes: <RouteBase>[
    GoRoute(
      path: '/',
      name: 'home',
      builder: (context, state) => SiteLayout(),
    ),
  ]);
}
