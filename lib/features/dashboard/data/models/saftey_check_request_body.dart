


import 'package:json_annotation/json_annotation.dart';

part 'saftey_check_request_body.g.dart';

@JsonSerializable()
class SafteyCheckRequestBody {

  int? crisisId;
  String? safetyStatus;
  SafteyCheckRequestBody({
    this.crisisId,
    this.safetyStatus,
  });

  Map<String, dynamic> toJson() => _$SafteyCheckRequestBodyToJson(this);
  
}
