


import 'package:json_annotation/json_annotation.dart';

part 'shelter.g.dart';

@JsonSerializable()
class Shelter {
  int? shelterId;
  String? name;
  String? location;
  int? capacity;
  int? currentOccupancy;
  String? facilities;
  String? contactInfo;


  Shelter({
    this.shelterId,
    this.name,
    this.location,
    this.capacity,
    this.currentOccupancy,
    this.facilities,
    this.contactInfo,
  });

   factory Shelter.fromJson(Map<String, dynamic> json) =>
      _$ShelterFromJson(json);

  Map<String, dynamic> toJson() => _$ShelterToJson(this);

  

}
