
import 'package:salam_hack/features/post/data/models/post_request_body.dart';
import 'package:salam_hack/features/post/data/models/post_response.dart';

import '../../../../core/networking/api_error_handler.dart';
import '../../../../core/networking/api_result.dart';
import '../../../../core/networking/api_service.dart';

class PostRepo {

   final ApiService _apiService;

  PostRepo(this._apiService);

  Future<ApiResult<List<PostResponse>>> getAllPosts() async {
    try {
      final response = await _apiService.getAllPosts();
      return ApiResult.success(response);
    } catch (errro) {
      return ApiResult.failure(ApiErrorHandler.handle(errro));
    }
  }

  Future<ApiResult<PostResponse>> createNewPost(PostRequestBody postRequestBody)async{
     try {
      final response = await _apiService.createNewPost(postRequestBody);
      return ApiResult.success(response);
    } catch (errro) {
      return ApiResult.failure(ApiErrorHandler.handle(errro));
    }
  }

  Future<ApiResult<String>> matchPost()async{
     try {
      final response = await _apiService.matchPost();
      return ApiResult.success(response);
    } catch (errro) {
      return ApiResult.failure(ApiErrorHandler.handle(errro));
    }
  }


  Future<ApiResult<PostResponse>> markPostAsDone(String id)async{
     try {
      final response = await _apiService.markPostAsDone(id);
      return ApiResult.success(response);
    } catch (errro) {
      return ApiResult.failure(ApiErrorHandler.handle(errro));
    }
  }

  // Future<ApiResult<String>> addNewPost(ClsPostRequest post)async{
  //   try {
  //      FormData formData = FormData.fromMap({
  //     "title": post.title,
  //     "description": post.description,
  //     "userId": post.userId,
  //     "location": post.location,
  //     "type": post.type,
  //     "urgency": post.urgency,
  //     "status": post.status,
  //     "quantity": post.quantity,
  //     "contactInfo": post.contactInfo,
  //     "photoUrl": post.photoUrl != null
  //         ? await MultipartFile.fromFile(
  //             post.photoUrl!.path,
  //             filename: post.photoUrl!.path.split('/').last,
  //           ) // Ensure a valid filename)
  //         : 'Test',
  //   });
  //     final response = await _apiService.createPost(formData);
  //     return ApiResult.success(response);
  //   } catch (errro) {
  //     return ApiResult.failure(ApiErrorHandler.handle(errro));
  //   }
  // }

  // Future<ApiResult<User>> currentUser()async{
  //    try {
  //     final response = await _apiService.getCurrentUser();
  //     return ApiResult.success(response);
  //   } catch (errro) {
  //     return ApiResult.failure(ApiErrorHandler.handle(errro));
  //   }
  // }



}