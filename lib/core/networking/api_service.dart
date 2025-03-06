


import 'dart:io';

import 'package:dio/dio.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';
import 'package:salam_hack/core/models/post.dart';
import 'package:salam_hack/core/models/shelter.dart';
import 'package:salam_hack/core/models/user.dart';
import 'package:salam_hack/core/networking/api_constants.dart';

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
  Future<void> updateUserById(@Path('id') String id ,@Body() User user);

  @DELETE('${ApiConstants.users}/{id}')
  Future<void> deleteUserById(@Path('id') String id);


  @GET(ApiConstants.posts)
  Future<List<Post>> getAllPosts();


  @GET(ApiConstants.shelters)
  Future<List<Shelter>> getAllShelters();


}