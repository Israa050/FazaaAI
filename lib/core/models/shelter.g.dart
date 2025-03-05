// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shelter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Shelter _$ShelterFromJson(Map<String, dynamic> json) => Shelter(
      shelterId: (json['shelterId'] as num?)?.toInt(),
      name: json['name'] as String?,
      location: json['location'] as String?,
      capacity: (json['capacity'] as num?)?.toInt(),
      currentOccupancy: (json['currentOccupancy'] as num?)?.toInt(),
      facilities: json['facilities'] as String?,
      contactInfo: json['contactInfo'] as String?,
    );

Map<String, dynamic> _$ShelterToJson(Shelter instance) => <String, dynamic>{
      'shelterId': instance.shelterId,
      'name': instance.name,
      'location': instance.location,
      'capacity': instance.capacity,
      'currentOccupancy': instance.currentOccupancy,
      'facilities': instance.facilities,
      'contactInfo': instance.contactInfo,
    };
