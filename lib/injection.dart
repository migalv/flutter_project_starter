import 'package:complete_flutter_project_starter/injection.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

final getIt = GetIt.instance;
Environment environment = Environment.dev;

@InjectableInit(
  initializerName: r'$initGetIt', // default
  preferRelativeImports: true, // default
  asExtension: false, // default
)
Future<GetIt> configureDependencies({required Environment env}) async {
  environment = env;
  late String stringEnv;
  switch (env) {
    case Environment.dev:
      stringEnv = 'dev';
      break;
    case Environment.prod:
      stringEnv = 'prod';
      break;
    case Environment.qa:
      stringEnv = 'test';
      break;
  }
  return $initGetIt(getIt, environment: stringEnv);
}

enum Environment {
  dev,
  prod,
  qa,
}
