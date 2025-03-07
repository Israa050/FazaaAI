
import 'package:salam_hack/core/models/post.dart';
import 'package:salam_hack/core/networking/api_error_handler.dart';
import 'package:salam_hack/core/networking/api_result.dart';
import 'package:salam_hack/core/networking/api_service.dart';

class HomeRepo {

   final ApiService _apiService;

  HomeRepo(this._apiService);

  Future<ApiResult<List<Post>>> getAllPosts() async {
    try {
      final response = await _apiService.getAllPosts();
      return ApiResult.success(response);
    } catch (errro) {
      return ApiResult.failure(ApiErrorHandler.handle(errro));
    }
  }
}