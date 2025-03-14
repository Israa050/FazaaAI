// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'clspost.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ClsPostRequest _$ClsPostRequestFromJson(Map<String, dynamic> json) =>
    ClsPostRequest(
      title: json['title'] as String,
      description: json['description'] as String,
      userId: (json['userId'] as num).toInt(),
      location: json['location'] as String,
      type: json['type'] as String?,
      status: json['status'] as String?,
      urgency: json['urgency'] as String?,
      quantity: (json['quantity'] as num).toInt(),
      contactInfo: json['contactInfo'] as String,
      photoUrl: ClsPostRequest._fileFromJson(json['photoUrl'] as String?),
    )..postId = (json['postId'] as num?)?.toInt();

Map<String, dynamic> _$ClsPostRequestToJson(ClsPostRequest instance) =>
    <String, dynamic>{
      'postId': instance.postId,
      'title': instance.title,
      'description': instance.description,
      'userId': instance.userId,
      'location': instance.location,
      'type': instance.type,
      'urgency': instance.urgency,
      'status': instance.status,
      'quantity': instance.quantity,
      'contactInfo': instance.contactInfo,
      'photoUrl': ClsPostRequest._fileToJson(instance.photoUrl),
    };
