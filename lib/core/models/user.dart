// ignore_for_file: public_member_api_docs, sort_constructors_first


import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable()
class User {

   int? userId;
   String? username;
   String? passwordHash;
   String? email;
   String? phoneNumber;
   String? address;
   String? nickname;

  User({
    this.userId,
    this.username,
    this.passwordHash,
    this.email,
    this.phoneNumber,
    this.address,
    this.nickname,
  });

  factory User.fromJson(Map<String, dynamic> json) =>
      _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);


}


// [
//   {
//     "userId": 4,
//     "username": "Yasmin Kotb",
//     "passwordHash": "hashed_password",
//     "email": "john@example.com",
//     "phoneNumber": "1234567890",
//     "address": "123 Main St",
//     "nickname": null
//   },
//   {
//     "userId": 5,
//     "username": "Salma Muhammed",
//     "passwordHash": "buildit",
//     "email": "Salma.Muhammed@example.com",
//     "phoneNumber": "444-555-6666",
//     "address": "202 Maple St, City, Country",
//     "nickname": null
//   },
//   {
//     "userId": 7,
//     "username": "FAATIMA",
//     "passwordHash": "hashed_password",
//     "email": "FAATIMA@example.com",
//     "phoneNumber": "1234567890",
//     "address": "123 Main St",
//     "nickname": null
//   },
//   {
//     "userId": 9,
//     "username": "john_doe",
//     "passwordHash": "hashedpassword123",
//     "email": "john.doe@example.com",
//     "phoneNumber": "+1234567890",
//     "address": "123 Main St, New York, NY",
//     "nickname": "Johnyyy"
//   }
// ]