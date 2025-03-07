

import 'package:salam_hack/core/models/shelter.dart';
import 'package:salam_hack/core/networking/api_error_handler.dart';
import 'package:salam_hack/core/networking/api_result.dart';
import 'package:salam_hack/core/networking/api_service.dart';

class SheltersRepo {

   final ApiService _apiService;

  SheltersRepo(this._apiService);

  Future<ApiResult<List<Shelter>>> getAllShelters() async {
    try {
      final response = await _apiService.getAllShelters();
      return ApiResult.success(response);
    } catch (errro) {
      return ApiResult.failure(ApiErrorHandler.handle(errro));
    }
  }
}