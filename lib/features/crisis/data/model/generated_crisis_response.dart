

import 'package:json_annotation/json_annotation.dart';

part 'generated_crisis_response.g.dart';

@JsonSerializable()
class GeneratedCrisisResponse {
  int? id;
  String? userDescription;
  String? city;
  String? type;
  String? enhancedDescription;
  String? survivalGuide;
  bool? resolved;
  UsetData? user;

  GeneratedCrisisResponse({
    this.id,
    this.userDescription,
    this.type,
    this.enhancedDescription,
    this.city,
    this.survivalGuide,
    this.resolved
  });

   factory GeneratedCrisisResponse.fromJson(Map<String, dynamic> json) =>
      _$GeneratedCrisisResponseFromJson(json);
}


@JsonSerializable()
class UsetData {
  int? id;
  String? username;

  UsetData({
    this.id,
    this.username,
  });

  factory UsetData.fromJson(Map<String, dynamic> json) =>
      _$UsetDataFromJson(json);

}
