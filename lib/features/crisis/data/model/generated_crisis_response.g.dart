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
      crisisType: json['crisisType'] as String?,
      enhancedDescription: json['enhancedDescription'] as String?,
      city: json['city'] as String?,
      survivalGuide: json['survivalGuide'] as String?,
      resolved: json['resolved'] as bool?,
    );

Map<String, dynamic> _$GeneratedCrisisResponseToJson(
        GeneratedCrisisResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userDescription': instance.userDescription,
      'city': instance.city,
      'crisisType': instance.crisisType,
      'enhancedDescription': instance.enhancedDescription,
      'survivalGuide': instance.survivalGuide,
      'resolved': instance.resolved,
    };
