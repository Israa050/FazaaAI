


import 'package:json_annotation/json_annotation.dart';

part 'notification.g.dart';

@JsonSerializable()
class Notification {

  int? id;
  String? message;
  String? type;
  bool? isRead;
  Notification({
    this.id,
    this.message,
    this.type,
    this.isRead,
  });

  factory Notification.fromJson(Map<String, dynamic> json) =>
      _$NotificationFromJson(json);
}
