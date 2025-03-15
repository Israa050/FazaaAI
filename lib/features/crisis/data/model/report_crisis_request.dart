

import 'package:json_annotation/json_annotation.dart';

part 'report_crisis_request.g.dart';

@JsonSerializable()
class ReportCrisisRequestBody {
  String? userDescription;
  String? city;

  ReportCrisisRequestBody({this.userDescription,this.city});

    Map<String, dynamic> toJson() => _$ReportCrisisRequestBodyToJson(this);

}