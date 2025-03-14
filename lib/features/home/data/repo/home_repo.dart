
import 'package:dio/dio.dart';
import 'package:salam_hack/core/models/clspost.dart';

import '../../../../core/models/post.dart';
import '../../../../core/models/user.dart';
import '../../../../core/networking/api_error_handler.dart';
import '../../../../core/networking/api_result.dart';
import '../../../../core/networking/api_service.dart';

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

  Future<ApiResult<String>> addNewPost(ClsPostRequest post)async{
    try {
       FormData formData = FormData.fromMap({
      "title": post.title,
      "description": post.description,
      "userId": post.userId,
      "location": post.location,
      "type": post.type,
      "urgency": post.urgency,
      "status": post.status,
      "quantity": post.quantity,
      "contactInfo": post.contactInfo,
      "photoUrl": post.photoUrl != null
          ? await MultipartFile.fromFile(
              post.photoUrl!.path,
              filename: post.photoUrl!.path.split('/').last,
            ) // Ensure a valid filename)
          : 'Test',
    });
      final response = await _apiService.createPost(formData);
      return ApiResult.success(response);
    } catch (errro) {
      return ApiResult.failure(ApiErrorHandler.handle(errro));
    }
  }

  Future<ApiResult<User>> currentUser()async{
     try {
      final response = await _apiService.getCurrentUser();
      return ApiResult.success(response);
    } catch (errro) {
      return ApiResult.failure(ApiErrorHandler.handle(errro));
    }
  }
}