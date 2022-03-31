// Use the `bexception` code snippet to create new exceptions

import 'package:complete_flutter_project_starter/domain/exceptions/base_exception.dart';

class ExampleException1 extends BaseException {
  ExampleException1(
    StackTrace stackTrace, {
    dynamic error,
    String? message,
  }) : super(
          BaseException.exceptionCodes[ExampleException1]!,
          stackTrace,
          error: error,
          message: message ?? '',
        );
}

class ExampleException2 extends BaseException {
  ExampleException2(
    StackTrace stackTrace, {
    dynamic error,
    String? message,
  }) : super(
          BaseException.exceptionCodes[ExampleException2]!,
          stackTrace,
          error: error,
          message: message ?? '',
        );
}
