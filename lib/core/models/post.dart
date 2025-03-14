

import 'package:json_annotation/json_annotation.dart';
import 'user.dart';
import 'dart:io';
import 'package:dio/dio.dart';

part 'post.g.dart';

@JsonSerializable()
class Post {
  int? postId;
  User? user;
  String? title;
  String? description;
  String? type;
  String? urgency;
  String? status;
  String? location;
  int? quantity;
  String? contactInfo;
  String? photoUrl;


  Post({
    this.postId,
    this.user,
    this.title,
    this.description,
    this.type,
    this.urgency,
    this.status,
    this.location,
    this.quantity,
    this.contactInfo,
    this.photoUrl,
  });

   factory Post.fromJson(Map<String, dynamic> json) =>
      _$PostFromJson(json);

  Map<String, dynamic> toJson() => _$PostToJson(this);

  
}


