

import 'package:json_annotation/json_annotation.dart';

part 'item.g.dart';

@JsonSerializable()
class Item {
  int? id;
  String? itemName;
  int? quantityRequested;
  int? quantityAvailable;

  Item({
    this.id,
    this.itemName,
    this.quantityRequested,
    this.quantityAvailable,
  });

   factory Item.fromJson(Map<String, dynamic> json) =>
      _$ItemFromJson(json);

  
}
