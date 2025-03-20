// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ClsNotification _$ClsNotificationFromJson(Map<String, dynamic> json) =>
    ClsNotification(
      id: (json['id'] as num?)?.toInt(),
      message: json['message'] as String?,
      type: json['type'] as String?,
      read: json['read'] as bool?,
      matchRequestId: (json['matchRequestId'] as num?)?.toInt(),
    );

Map<String, dynamic> _$ClsNotificationToJson(ClsNotification instance) =>
    <String, dynamic>{
      'id': instance.id,
      'message': instance.message,
      'type': instance.type,
      'read': instance.read,
      'matchRequestId': instance.matchRequestId,
    };
