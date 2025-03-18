

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



  

}