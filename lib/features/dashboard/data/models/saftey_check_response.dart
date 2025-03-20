

import 'package:json_annotation/json_annotation.dart';

part 'saftey_check_response.g.dart';

@JsonSerializable()
class SafteyCheckResponse {

  String? message;
  SafteyCheckResponse({
    this.message,
  });

  factory SafteyCheckResponse.fromJson(Map<String, dynamic> json) =>
      _$SafteyCheckResponseFromJson(json);

  

}
