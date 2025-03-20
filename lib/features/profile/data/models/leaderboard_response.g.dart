// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'leaderboard_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LeaderboardResponse _$LeaderboardResponseFromJson(Map<String, dynamic> json) =>
    LeaderboardResponse(
      id: (json['id'] as num?)?.toInt(),
      username: json['username'] as String?,
      reputationPoints: (json['reputationPoints'] as num?)?.toDouble(),
      rank: json['rank'] as String?,
      address: json['address'] as String?,
    );

Map<String, dynamic> _$LeaderboardResponseToJson(
        LeaderboardResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'reputationPoints': instance.reputationPoints,
      'rank': instance.rank,
      'address': instance.address,
    };
