// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'match_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MatchRequest _$MatchRequestFromJson(Map<String, dynamic> json) => MatchRequest(
      id: (json['id'] as num?)?.toInt(),
      requestPostId: (json['requestPostId'] as num?)?.toInt(),
      offerPostId: (json['offerPostId'] as num?)?.toInt(),
      status: json['status'] as String?,
    );

Map<String, dynamic> _$MatchRequestToJson(MatchRequest instance) =>
    <String, dynamic>{
      'id': instance.id,
      'requestPostId': instance.requestPostId,
      'offerPostId': instance.offerPostId,
      'status': instance.status,
    };
