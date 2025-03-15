// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report_crisis_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReportCrisisRequestBody _$ReportCrisisRequestBodyFromJson(
        Map<String, dynamic> json) =>
    ReportCrisisRequestBody(
      userDescription: json['userDescription'] as String?,
      city: json['city'] as String?,
    );

Map<String, dynamic> _$ReportCrisisRequestBodyToJson(
        ReportCrisisRequestBody instance) =>
    <String, dynamic>{
      'userDescription': instance.userDescription,
      'city': instance.city,
    };
