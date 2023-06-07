import 'package:auto_route/auto_route.dart';
import 'package:complete_flutter_project_starter/presentation/routes/routes.gr.dart';
import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
  final _appRouter = AppRouter();

  AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'App Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      routerDelegate: _appRouter.delegate(
        navigatorObservers: () => [HeroController(), AutoRouteObserver()],
      ),
      routeInformationParser: _appRouter.defaultRouteParser(),
    );
  }
}
