

import '../../../../core/models/shelter.dart';
import '../../../../core/networking/api_error_handler.dart';
import '../../../../core/networking/api_result.dart';
import '../../../../core/networking/api_service.dart';

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

   Future<ApiResult<String>> addNewShelter(Shelter shelter) async {
    try {
      final response = await _apiService.createNewShelter(shelter);
      return ApiResult.success(response);
    } catch (errro) {
      return ApiResult.failure(ApiErrorHandler.handle(errro));
    }
  }


}