// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'saftey_check_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SafteyCheckRequestBody _$SafteyCheckRequestBodyFromJson(
        Map<String, dynamic> json) =>
    SafteyCheckRequestBody(
      crisisId: (json['crisisId'] as num?)?.toInt(),
      safetyStatus: json['safetyStatus'] as String?,
    );

Map<String, dynamic> _$SafteyCheckRequestBodyToJson(
        SafteyCheckRequestBody instance) =>
    <String, dynamic>{
      'crisisId': instance.crisisId,
      'safetyStatus': instance.safetyStatus,
    };
