
import 'package:json_annotation/json_annotation.dart';

part 'api_error_model.g.dart';

@JsonSerializable()
class ApiErrorModel {
  final String? message;
  final int? code;

  ApiErrorModel({
    required this.message,
    this.code,
  });

  factory ApiErrorModel.fromJson(Map<String, dynamic> json) =>
      _$ApiErrorModelFromJson(json);

  Map<String, dynamic> toJson() => _$ApiErrorModelToJson(this);
}

// {
//     "timestamp": "2025-03-05T15:09:24.494+00:00",
//     "status": 400,
//     "error": "Bad Request",
//     "message": "No message available",
//     "path": "//api/users"
// }