


import 'package:json_annotation/json_annotation.dart';

part 'notification.g.dart';

@JsonSerializable()
class ClsNotification {

  int? id;
  String? message;
  String? type;
  bool? isRead;
  ClsNotification({
    this.id,
    this.message,
    this.type,
    this.isRead,
  });

  factory ClsNotification.fromJson(Map<String, dynamic> json) =>
      _$ClsNotificationFromJson(json);
}
