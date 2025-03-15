// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostRequestBody _$PostRequestBodyFromJson(Map<String, dynamic> json) =>
    PostRequestBody(
      userDescription: json['userDescription'] as String?,
      status: json['status'] as String?,
      urgency: json['urgency'] as String?,
      type: json['type'] as String?,
      city: json['city'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
    );

Map<String, dynamic> _$PostRequestBodyToJson(PostRequestBody instance) =>
    <String, dynamic>{
      'userDescription': instance.userDescription,
      'status': instance.status,
      'urgency': instance.urgency,
      'type': instance.type,
      'city': instance.city,
      'phoneNumber': instance.phoneNumber,
    };
