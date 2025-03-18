// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostResponse _$PostResponseFromJson(Map<String, dynamic> json) => PostResponse(
      id: (json['id'] as num?)?.toInt(),
      userDescription: json['userDescription'] as String?,
      enhancedDescription: json['enhancedDescription'] as String?,
      status: json['status'] as String?,
      urgency: json['urgency'] as String?,
      type: json['type'] as String?,
      city: json['city'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => Item.fromJson(e as Map<String, dynamic>))
          .toList(),
      username: json['username'] as String?,
      userId: (json['userId'] as num?)?.toInt(),
    );

Map<String, dynamic> _$PostResponseToJson(PostResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userDescription': instance.userDescription,
      'enhancedDescription': instance.enhancedDescription,
      'status': instance.status,
      'urgency': instance.urgency,
      'type': instance.type,
      'city': instance.city,
      'phoneNumber': instance.phoneNumber,
      'items': instance.items,
      'username': instance.username,
      'userId': instance.userId,
    };
