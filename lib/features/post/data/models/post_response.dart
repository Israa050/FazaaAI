
import 'package:json_annotation/json_annotation.dart';
import 'package:salam_hack/core/models/clsuser.dart';
import 'package:salam_hack/features/post/data/models/item.dart';

part 'post_response.g.dart';


@JsonSerializable()
class PostResponse {
  int? id;
  String? userDescription;
  String? enhancedDescription;
  String? status;
  String? urgency;
  String? type;
  String? city;
  String? phoneNumber;
  List<Item>? items;
  String? username;
  int? userId;
  PostResponse({
    this.id,
    this.userDescription,
    this.enhancedDescription,
    this.status,
    this.urgency,
    this.type,
    this.city,
    this.phoneNumber,
    this.items,
    this.username,
    this.userId,
  });

   factory PostResponse.fromJson(Map<String, dynamic> json) =>
      _$PostResponseFromJson(json);

}
