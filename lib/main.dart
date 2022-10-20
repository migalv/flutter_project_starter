import 'package:complete_flutter_project_starter/injection.dart';
import 'package:complete_flutter_project_starter/presentation/app_widget.dart';
import 'package:flutter/widgets.dart';

Future<void> startApp(Env env) async {
  //? Add if you have asynchronous work
  // final widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  // FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  // Asynchronous work goes here
  // FlutterNativeSplash.remove();
  runApp(AppWidget());
}
