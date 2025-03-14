

import '../../../../core/models/crisis.dart';
import '../../../../core/networking/api_error_handler.dart';
import '../../../../core/networking/api_result.dart';
import '../../../../core/networking/api_service.dart';

class CrisisRepo {

   final ApiService _apiService;

  CrisisRepo(this._apiService);

  Future<ApiResult<List<Crisis>>> getAllCrisis() async {
    try {
      final response = await _apiService.getAllCrisis();
      return ApiResult.success(response);
    } catch (errro) {
      return ApiResult.failure(ApiErrorHandler.handle(errro));
    }
  }
}