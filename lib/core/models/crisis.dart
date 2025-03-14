

import 'package:json_annotation/json_annotation.dart';
import 'user.dart';

part 'crisis.g.dart';

@JsonSerializable()
class Crisis {
  int? logId;
  User? user;
  String? crisisType;
  String? description;
  String? timeOfCrisis;
  String? location;
  bool? resolved;


  Crisis({
    this.logId,
    this.user,
    this.crisisType,
    this.description,
    this.timeOfCrisis,
    this.location,
    this.resolved,
  });

   factory Crisis.fromJson(Map<String, dynamic> json) =>
      _$CrisisFromJson(json);

  Map<String, dynamic> toJson() => _$CrisisToJson(this);

  
}
