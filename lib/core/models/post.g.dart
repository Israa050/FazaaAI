// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Post _$PostFromJson(Map<String, dynamic> json) => Post(
      postId: (json['postId'] as num?)?.toInt(),
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      title: json['title'] as String?,
      description: json['description'] as String?,
      type: json['type'] as String?,
      urgency: json['urgency'] as String?,
      status: json['status'] as String?,
      location: json['location'] as String?,
      quantity: (json['quantity'] as num?)?.toInt(),
      contactInfo: json['contactInfo'] as String?,
      photoUrl: json['photoUrl'] as String?,
    );

Map<String, dynamic> _$PostToJson(Post instance) => <String, dynamic>{
      'postId': instance.postId,
      'user': instance.user,
      'title': instance.title,
      'description': instance.description,
      'type': instance.type,
      'urgency': instance.urgency,
      'status': instance.status,
      'location': instance.location,
      'quantity': instance.quantity,
      'contactInfo': instance.contactInfo,
      'photoUrl': instance.photoUrl,
    };
