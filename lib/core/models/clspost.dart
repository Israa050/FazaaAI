


import 'dart:io';

import 'package:json_annotation/json_annotation.dart';

part 'clspost.g.dart';

@JsonSerializable()
class ClsPostRequest {
  int? postId;
  final String title;
  final String description;
  final int userId;
  final String location;
  final String? type;
  final String? urgency;
  final String? status;
  final int quantity;
  final String contactInfo;

  @JsonKey(fromJson: _fileFromJson, toJson: _fileToJson)
   File? photoUrl;

  ClsPostRequest({
    required this.title,
    required this.description,
    required this.userId,
    required this.location,
    required this.type,
    required this.status,
    required this.urgency,
    required this.quantity,
    required this.contactInfo,
    this.photoUrl,
  });


  Map<String, dynamic> toJson() => _$ClsPostRequestToJson(this);

     // Manually define fromJson and toJson for File
  static File? _fileFromJson(String? path) {
    return path != null ? File(path) : null;
  }

  static String? _fileToJson(File? file) {
    return file?.path;
  }

}


class FileConverter implements JsonConverter<File?, String?> {
  const FileConverter();

  @override
  File? fromJson(String? json) {
    return json != null ? File(json) : null;
  }

  @override
  String? toJson(File? file) {
    return file?.path;
  }
}