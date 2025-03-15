

import 'package:json_annotation/json_annotation.dart';

part 'generated_crisis_response.g.dart';

@JsonSerializable()
class GeneratedCrisisResponse {
  int? id;
  String? userDescription;
  String? city;
  String? crisisType;
  String? enhancedDescription;
  String? survivalGuide;
  bool? resolved;

  GeneratedCrisisResponse({
    this.id,
    this.userDescription,
    this.crisisType,
    this.enhancedDescription,
    this.city,
    this.survivalGuide,
    this.resolved
  });

   factory GeneratedCrisisResponse.fromJson(Map<String, dynamic> json) =>
      _$GeneratedCrisisResponseFromJson(json);
}