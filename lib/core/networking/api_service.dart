import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';
import 'package:salam_hack/core/models/clspost.dart';
import 'package:salam_hack/core/models/clsuser.dart';
import 'package:salam_hack/core/models/match_request.dart';
import 'package:salam_hack/features/crisis/data/model/generated_crisis_response.dart';
import 'package:salam_hack/features/crisis/data/model/report_crisis_request.dart';
import 'package:salam_hack/features/notifications/data/models/notification.dart';
import 'package:salam_hack/features/post/data/models/post_request_body.dart';
import 'package:salam_hack/features/post/data/models/post_response.dart';
import '../models/crisis.dart';
import '../models/post.dart';
import '../models/shelter.dart';
import '../models/user.dart';
import 'api_constants.dart';
import '../../features/auth/data/model/login_request_body.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @POST(ApiConstants.users)
  Future<String> createNewUser(@Body() User user);

  @GET(ApiConstants.users)
  Future<List<User>> getAllUsers();

  @GET('${ApiConstants.users}/{id}')
  Future<User?> getUserByID(@Path('id') String userId);

  @PUT('${ApiConstants.users}/{id}')
  Future<void> updateUserById(@Path('id') String id, @Body() User user);

  @DELETE('${ApiConstants.users}/{id}')
  Future<void> deleteUserById(@Path('id') String id);

  @GET(ApiConstants.allPosts)
  Future<List<PostResponse>> getAllPosts();

  @GET(ApiConstants.shelters)
  Future<List<Shelter>> getAllShelters();

  // @GET(ApiConstants.crisis)
  // Future<List<Crisis>> getAllCrisis();

  // @MultiPart()
  // @POST(ApiConstants.posts)
  // @Header("Content-Type: multipart/form-data")
  // Future<String> createNewPost(
  //   @Part() int userId,
  //   @Part() String title,
  //   @Part() String description,
  //   @Part() String type,
  //   @Part() String urgency,
  //   @Part() String status,
  //   @Part() String location,
  //   @Part() String quantity,
  //   @Part() String contactInfo,
  //   @Part() MultipartFile photoUrl,
  // );

 


  //  @POST(ApiConstants.posts)
  // @MultiPart()
  // @Header("Content-Type: multipart/form-data")
  // Future<String> createPost(
  //  @Body() FormData post,
  //  );



  @POST(ApiConstants.shelters)
  Future<String> createNewShelter(@Body() Shelter shelter);

  @POST(ApiConstants.usersLoging)
  Future<String> login(@Body() LoginRequestBody loginRequestBody);

  // @GET(ApiConstants.me)
  // Future<User> getCurrentUser();

  @POST(ApiConstants.createCrisis)
  Future<GeneratedCrisisResponse> reportCrisisWithAI(@Body() ReportCrisisRequestBody reportCrisis);

  @GET(ApiConstants.allCrisis)
  Future<List<GeneratedCrisisResponse>> getAllCrisis();

  @PUT('${ApiConstants.crisis}/{id}/resolved')
  Future<GeneratedCrisisResponse> markCrisisAsResolved(@Path('id') String id);

  @PUT("${ApiConstants.resolvedPost}/{id}")
  Future<PostResponse> markPostAsDone(@Path() String id);

  @POST(ApiConstants.matchPost)
  Future<String> matchPost();

  @POST(ApiConstants.createPost)
  Future<PostResponse> createNewPost(@Body() PostRequestBody postRequestBody);

  @GET(ApiConstants.currentUser)
  Future<ClsUser> getCurrentUser();

  @GET('${ApiConstants.userNotifications}/{id}')
  Future<List<ClsNotification>> getUserNotification(@Path() String id);

  @GET(ApiConstants.myMatchRequest)
  Future<List<MatchRequest>> getMyMatchRequest();

  @POST('${ApiConstants.matchRequestAccept}/{id}')
  Future<String> acceptMatchRequest(@Path() String id);

  @POST('${ApiConstants.matchRequestReject}/{id}')
  Future<String> rejectMatchRequest(@Path() String id);
  
}
