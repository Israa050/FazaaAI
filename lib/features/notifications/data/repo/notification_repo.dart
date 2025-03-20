

import 'package:salam_hack/core/networking/api_error_handler.dart';
import 'package:salam_hack/core/networking/api_result.dart';
import 'package:salam_hack/core/networking/api_service.dart';
import 'package:salam_hack/features/notifications/data/models/notification.dart';

class NotificationRepo {
  final ApiService _apiService;

  NotificationRepo(this._apiService);

  Future<ApiResult<List<ClsNotification>>> getAllNotifications(String id) async {
    try {
      final response = await _apiService.getUserNotification(id);
      return ApiResult.success(response);
    } catch (errro) {
      return ApiResult.failure(ApiErrorHandler.handle(errro));
    }
  }

  Future<ApiResult<String>> acceptMatchRequest(String id)async{
     try {
      final response = await _apiService.acceptMatchRequest(id);
      return ApiResult.success(response);
    } catch (errro) {
      return ApiResult.failure(ApiErrorHandler.handle(errro));
    }
  }

  
  Future<ApiResult<String>> rejectMatchRequest(String id)async{
     try {
      final response = await _apiService.rejectMatchRequest(id);
      return ApiResult.success(response);
    } catch (errro) {
      return ApiResult.failure(ApiErrorHandler.handle(errro));
    }
  }

  Future<ApiResult<String>> checkSafetyStatus(String status)async{
     try {
      final response = await _apiService.checkSafetyStatus(status);
      return ApiResult.success(response);
    } catch (errro) {
      return ApiResult.failure(ApiErrorHandler.handle(errro));
    }
  }





  

}