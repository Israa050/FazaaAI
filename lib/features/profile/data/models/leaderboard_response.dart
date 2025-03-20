

import 'package:json_annotation/json_annotation.dart';

part 'leaderboard_response.g.dart';

@JsonSerializable()
class LeaderboardResponse {

  int? id;
  String? username;
  int? reputationPoints;
  String? rank;
  String? address;
  LeaderboardResponse({
    this.id,
    this.username,
    this.reputationPoints,
    this.rank,
    this.address,
  });

  
  factory LeaderboardResponse.fromJson(Map<String, dynamic> json) =>
      _$LeaderboardResponseFromJson(json);


}
