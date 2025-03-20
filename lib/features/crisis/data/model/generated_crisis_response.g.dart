// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'generated_crisis_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GeneratedCrisisResponse _$GeneratedCrisisResponseFromJson(
        Map<String, dynamic> json) =>
    GeneratedCrisisResponse(
      id: (json['id'] as num?)?.toInt(),
      userDescription: json['userDescription'] as String?,
      type: json['type'] as String?,
      enhancedDescription: json['enhancedDescription'] as String?,
      city: json['city'] as String?,
      survivalGuide: json['survivalGuide'] as String?,
      resolved: json['resolved'] as bool?,
    )..username = json['username'] as String?;

Map<String, dynamic> _$GeneratedCrisisResponseToJson(
        GeneratedCrisisResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userDescription': instance.userDescription,
      'city': instance.city,
      'type': instance.type,
      'enhancedDescription': instance.enhancedDescription,
      'survivalGuide': instance.survivalGuide,
      'resolved': instance.resolved,
      'username': instance.username,
    };

UsetData _$UsetDataFromJson(Map<String, dynamic> json) => UsetData(
      id: (json['id'] as num?)?.toInt(),
      username: json['username'] as String?,
    );

Map<String, dynamic> _$UsetDataToJson(UsetData instance) => <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
    };
