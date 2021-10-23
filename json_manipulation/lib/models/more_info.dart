import 'package:json_manipulation/models/inventory.dart';
import 'package:json_manipulation/models/placement.dart';

import 'package:json_manipulation/models/inventory.dart';

class MoreInfo {
  Inventory? inventory;
  Placement? placement;
  int? purchased_at;

  MoreInfo({
    this.purchased_at,
   required Inventory inventory,
   required Placement placement,
  });

  factory MoreInfo.fromJson(Map<String, dynamic> json) {
    return MoreInfo(
      purchased_at: json['purchased_at'],
      inventory: Inventory.fromJson(json['inventory']),
      placement: Placement.fromJson(json['inventory']),
    );
  }
   Map<String,dynamic> toJson(){
    return {
      "purchased_at":purchased_at,
      "inventory": inventory?.toJson(),
      "placement" : placement?.toJson(),
    };
  }
}
