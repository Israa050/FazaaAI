


import 'package:salam_hack/core/networking/api_error_handler.dart';
import 'package:salam_hack/core/networking/api_result.dart';
import 'package:salam_hack/core/networking/api_service.dart';
import 'package:salam_hack/features/profile/data/models/leaderboard_response.dart';
import 'package:salam_hack/features/profile/data/models/profile.dart';

class ProfileRepo {

   final ApiService _apiService;

  ProfileRepo(this._apiService);

  Future<ApiResult<Profile>> getUserProfile(String userId) async {
    try {
      final response = await _apiService.getUserProfile(userId);
      return ApiResult.success(response);
    } catch (errro) {
      return ApiResult.failure(ApiErrorHandler.handle(errro));
    }
  }

   Future<ApiResult<List<LeaderboardResponse>>> getLeaderBoard() async {
    try {
      final response = await _apiService.getLeaderBoard();
      return ApiResult.success(response);
    } catch (errro) {
      return ApiResult.failure(ApiErrorHandler.handle(errro));
    }
  }



}