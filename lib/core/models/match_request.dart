


import 'package:json_annotation/json_annotation.dart';

part 'match_request.g.dart';

@JsonSerializable()
class MatchRequest {
  int? id;
  int? requestPostId;
  int? offerPostId;
  String? status;
  MatchRequest({
    this.id,
    this.requestPostId,
    this.offerPostId,
    this.status,
  });

  factory MatchRequest.fromJson(Map<String, dynamic> json) =>
      _$MatchRequestFromJson(json);

  
}
