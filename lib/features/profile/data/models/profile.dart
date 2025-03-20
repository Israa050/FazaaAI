


import 'package:json_annotation/json_annotation.dart';

part 'profile.g.dart';

@JsonSerializable()
class Profile {
  String? username;
  double? reputationPoints;
  String? rank;
  int? pointsToNextRank;


  Profile({
    this.username,
    this.reputationPoints,
    this.rank,
    this.pointsToNextRank,
  });

  factory Profile.fromJson(Map<String, dynamic> json) =>
      _$ProfileFromJson(json);

  

}
