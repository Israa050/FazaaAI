// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) => User(
      userId: (json['userId'] as num?)?.toInt(),
      username: json['username'] as String?,
      passwordHash: json['passwordHash'] as String?,
      email: json['email'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      address: json['address'] as String?,
      nickname: json['nickname'] as String?,
    );

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'userId': instance.userId,
      'username': instance.username,
      'passwordHash': instance.passwordHash,
      'email': instance.email,
      'phoneNumber': instance.phoneNumber,
      'address': instance.address,
      'nickname': instance.nickname,
    };
