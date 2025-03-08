

import 'package:salam_hack/core/models/user.dart';
import 'package:salam_hack/core/networking/api_error_handler.dart';
import 'package:salam_hack/core/networking/api_result.dart';
import 'package:salam_hack/core/networking/api_service.dart';
import 'package:salam_hack/features/auth/data/model/login_request_body.dart';

class AuthRepo {
  final ApiService _apiService;

  AuthRepo(this._apiService);

  Future<ApiResult> createNewUser(User user) async {
    try {
      final response = await _apiService.createNewUser(user);
      return ApiResult.success(response);
    } catch (errro) {
      return ApiResult.failure(ApiErrorHandler.handle(errro));
    }
  }

  Future<ApiResult<String>> login(LoginRequestBody loginRequestBody) async {
    try {
      final response = await _apiService.login(loginRequestBody);
      return ApiResult.success(response);
    } catch (errro) {
      return ApiResult.failure(ApiErrorHandler.handle(errro));
    }
  }

}