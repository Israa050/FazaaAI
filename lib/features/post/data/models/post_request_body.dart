



import 'package:json_annotation/json_annotation.dart';

part 'post_request_body.g.dart';

@JsonSerializable()
class PostRequestBody {
  String? userDescription;
  String? status;
  String? urgency;
  String? type;
  String? city;
  String? phoneNumber;

  PostRequestBody({
    this.userDescription,
    this.status,
    this.urgency,
    this.type,
    this.city,
    this.phoneNumber,
  });
  

      Map<String, dynamic> toJson() => _$PostRequestBodyToJson(this);

  
}
