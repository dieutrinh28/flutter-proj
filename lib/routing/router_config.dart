import 'package:flutter_proj/routing/route_constants.dart';
import 'package:flutter_proj/routing/routing.dart';
import 'package:go_router/go_router.dart';

final routerConfig = GoRouter(
  initialLocation: RouteConstants.login.path,
  routes: AppRouter.appRouter,
);
