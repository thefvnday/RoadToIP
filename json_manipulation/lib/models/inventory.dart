import 'dart:convert';

Inventory inventoryFromJson(String str) => Inventory.fromJson(jsonDecode(str));

String  inventoryToJson(Inventory inventory) => json.encode(inventory.toJson());

class Inventory{
  int? id;
  String? name;
  String? type;
  var tags;
 
Inventory({
  this.id,
  this.name,
  this.type,
  this.tags,
});

factory Inventory.fromJson(Map<String, dynamic> json){
return Inventory(
  id: json['id'],
  name: json['name'],
  type: json['type'],
  tags: json['tags'],
  );
}

  
  Map<String, dynamic> toJson(){
    return {
      "id" : id,
      "name" : name,
      "type" : type,
      "tags" : tags,
    };
  }
}