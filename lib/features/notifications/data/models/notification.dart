


import 'package:json_annotation/json_annotation.dart';

part 'notification.g.dart';

@JsonSerializable()
class ClsNotification {

  int? id;
  String? message;
  String? type;
  bool? read;
  int? matchRequestId;

  ClsNotification({
    this.id,
    this.message,
    this.type,
    this.read,
    this.matchRequestId
  });

  factory ClsNotification.fromJson(Map<String, dynamic> json) =>
      _$ClsNotificationFromJson(json);
}
