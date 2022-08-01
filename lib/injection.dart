import 'package:complete_flutter_project_starter/injection.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

final getIt = GetIt.instance;
Env environment = Env.dev;

@InjectableInit(
  initializerName: r'$initGetIt', // default
  preferRelativeImports: true, // default
  asExtension: false, // default
)
Future<GetIt> configureDependencies({required Env env}) async {
  environment = env;
  late String stringEnv;
  switch (env) {
    case Env.dev:
      stringEnv = 'dev';
      break;
    case Env.prod:
      stringEnv = 'prod';
      break;
    case Env.qa:
      stringEnv = 'test';
      break;
  }
  return $initGetIt(getIt, environment: stringEnv);
}

enum Env {
  dev,
  prod,
  qa,
}
