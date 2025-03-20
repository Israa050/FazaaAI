// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Profile _$ProfileFromJson(Map<String, dynamic> json) => Profile(
      username: json['username'] as String?,
      reputationPoints: (json['reputationPoints'] as num?)?.toDouble(),
      rank: json['rank'] as String?,
      pointsToNextRank: (json['pointsToNextRank'] as num?)?.toInt(),
    );

Map<String, dynamic> _$ProfileToJson(Profile instance) => <String, dynamic>{
      'username': instance.username,
      'reputationPoints': instance.reputationPoints,
      'rank': instance.rank,
      'pointsToNextRank': instance.pointsToNextRank,
    };
