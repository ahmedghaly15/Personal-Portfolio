import 'package:dio/dio.dart';

import 'api_error_message.dart';
import 'api_error_model.dart';

class ApiErrorHandler {
  static ApiErrorModel handle(dynamic error) {
    if (error is DioException) {
      switch (error.type) {
        case DioExceptionType.connectionTimeout:
          return const ApiErrorModel(message: ApiErrorMessage.timeoutError);
        case DioExceptionType.sendTimeout:
          return const ApiErrorModel(message: ApiErrorMessage.timeoutError);
        case DioExceptionType.receiveTimeout:
          return const ApiErrorModel(message: ApiErrorMessage.timeoutError);
        case DioExceptionType.badResponse:
        case DioExceptionType.unknown:
          return const ApiErrorModel(message: ApiErrorMessage.badResponse);
        case DioExceptionType.cancel:
          return const ApiErrorModel(message: ApiErrorMessage.defaultError);
        case DioExceptionType.connectionError:
          return const ApiErrorModel(
            message: ApiErrorMessage.noInternetConnection,
          );
        case DioExceptionType.badCertificate:
          return const ApiErrorModel(message: ApiErrorMessage.defaultError);
      }
    } else {
      return const ApiErrorModel(message: ApiErrorMessage.defaultError);
    }
  }
}
