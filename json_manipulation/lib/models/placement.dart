import 'dart:convert';

Placement placementFromJson(String str) => Placement.fromJson(jsonDecode(str));

String  plcaementToJson(Placement placement) => json.encode(placement.toJson());

class Placement{
  String? room_id;
  String? name;

  Placement({
    this.room_id,
    this.name,
  });

  factory Placement.fromJson(Map<String,dynamic>json){
    return Placement(
      room_id: json['room_id'],
      name: json["name"],
    );
  }
  Map<String,dynamic> toJson(){
    return {
      "room_id":room_id,
      "name": name,
    };
  }
}