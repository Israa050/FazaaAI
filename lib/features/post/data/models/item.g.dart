// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Item _$ItemFromJson(Map<String, dynamic> json) => Item(
      id: (json['id'] as num?)?.toInt(),
      itemName: json['itemName'] as String?,
      quantityRequested: (json['quantityRequested'] as num?)?.toInt(),
      quantityAvailable: (json['quantityAvailable'] as num?)?.toInt(),
    );

Map<String, dynamic> _$ItemToJson(Item instance) => <String, dynamic>{
      'id': instance.id,
      'itemName': instance.itemName,
      'quantityRequested': instance.quantityRequested,
      'quantityAvailable': instance.quantityAvailable,
    };
