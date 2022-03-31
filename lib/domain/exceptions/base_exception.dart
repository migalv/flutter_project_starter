import 'package:complete_flutter_project_starter/domain/exceptions/example_exceptions.dart';

/// Base exception that represents any custom exception thrown by the programmer
abstract class BaseException implements Exception {
  /// The code that represents the thrown exception
  final int code;
  final dynamic error;
  final StackTrace stackTrace;
  final String message;

  BaseException(
    this.code,
    this.stackTrace, {
    this.error,
    this.message = "",
  }) {
    assert(codesMap.containsKey(code));
  }

  /// Map containing all the codes for each exception
  static const Map<int, Type> codesMap = {
    101: ExampleException1,
    102: ExampleException2,
  };

  /// A constant variable that maps each exception type to its corresponding code
  static Map<Type, int> get exceptionCodes => codesMap.map((key, value) => MapEntry(value, key));
}
