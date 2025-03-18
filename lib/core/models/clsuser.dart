


import 'package:json_annotation/json_annotation.dart';

part 'clsuser.g.dart';

@JsonSerializable()
class ClsUser {
  int? id;
  String? username;
  String? email;
  String? address;
  String? phoneNumber;
  String? firstName;
  String? lastName;
  ClsUser({
    this.id,
    this.username,
    this.email,
    this.address,
    this.phoneNumber,
    this.firstName,
    this.lastName,
  });

   factory ClsUser.fromJson(Map<String, dynamic> json) =>
      _$ClsUserFromJson(json);

  Map<String, dynamic> toJson() => _$ClsUserToJson(this);

  
}
