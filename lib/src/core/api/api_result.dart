import 'api_error_model.dart';

sealed class ApiResult<T> {
  const factory ApiResult.success(T data) = ApiResultSuccess<T>;
  const factory ApiResult.error(ApiErrorModel apiErrorModel) =
      ApiResultError<T>;
}

class ApiResultSuccess<T> implements ApiResult<T> {
  final T data;

  const ApiResultSuccess(this.data);
}

class ApiResultError<T> implements ApiResult<T> {
  final ApiErrorModel apiErrorModel;

  const ApiResultError(this.apiErrorModel);
}
