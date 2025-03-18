

import 'package:salam_hack/features/crisis/data/model/generated_crisis_response.dart';
import 'package:salam_hack/features/crisis/data/model/report_crisis_request.dart';

import '../../../../core/networking/api_error_handler.dart';
import '../../../../core/networking/api_result.dart';
import '../../../../core/networking/api_service.dart';

class CrisisRepo {

   final ApiService _apiService;

  CrisisRepo(this._apiService);

  Future<ApiResult<List<GeneratedCrisisResponse>>> getAllCrisis() async {
    try {
      final response = await _apiService.getAllCrisis();
      return ApiResult.success(response);
    } catch (errro) {
      return ApiResult.failure(ApiErrorHandler.handle(errro));
    }
  }

  Future<ApiResult<GeneratedCrisisResponse>> reportCrisisWithAI(ReportCrisisRequestBody reportCrisisRequestBody)async{
    try {
      final response = await _apiService.reportCrisisWithAI(reportCrisisRequestBody);
      return ApiResult.success(response);
    } catch (errro) {
      return ApiResult.failure(ApiErrorHandler.handle(errro));
    }
  }

  Future<ApiResult<GeneratedCrisisResponse>> markCrisisAsResolved(String id)async{
    try {
      final response = await _apiService.markCrisisAsResolved(id);
      return ApiResult.success(response);
    } catch (errro) {
      return ApiResult.failure(ApiErrorHandler.handle(errro));
    }
  }

  
}