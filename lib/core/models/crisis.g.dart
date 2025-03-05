// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'crisis.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Crisis _$CrisisFromJson(Map<String, dynamic> json) => Crisis(
      logId: (json['logId'] as num?)?.toInt(),
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      crisisType: json['crisisType'] as String?,
      description: json['description'] as String?,
      timeOfCrisis: json['timeOfCrisis'] as String?,
      location: json['location'] as String?,
      resolved: json['resolved'] as bool?,
    );

Map<String, dynamic> _$CrisisToJson(Crisis instance) => <String, dynamic>{
      'logId': instance.logId,
      'user': instance.user,
      'crisisType': instance.crisisType,
      'description': instance.description,
      'timeOfCrisis': instance.timeOfCrisis,
      'location': instance.location,
      'resolved': instance.resolved,
    };
