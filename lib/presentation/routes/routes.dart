import 'package:auto_route/auto_route.dart';
import 'package:complete_flutter_project_starter/presentation/home/home_page.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: HomePage, initial: true),
  ],
)
class $AppRouter {}
