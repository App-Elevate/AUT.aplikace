import 'package:auto_route/auto_route.dart';
import 'package:coree/src/_routing/app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        // HomeScreen is generated as HomeRoute because
        // of the replaceInRouteName property
        AutoRoute(page: MainAppRoute.page, path: '/'),
      ];
}
