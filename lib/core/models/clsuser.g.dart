// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'clsuser.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ClsUser _$ClsUserFromJson(Map<String, dynamic> json) => ClsUser(
      id: (json['id'] as num?)?.toInt(),
      username: json['username'] as String?,
      email: json['email'] as String?,
      address: json['address'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
    );

Map<String, dynamic> _$ClsUserToJson(ClsUser instance) => <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'email': instance.email,
      'address': instance.address,
      'phoneNumber': instance.phoneNumber,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
    };
