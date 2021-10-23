import 'package:flutter/material.dart';
import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:json_manipulation/models/more_info.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _simpleResponse = {
    [
      {
        "inventory_id": 9382,
        "name": "Brown Chair",
        "type": "furniture",
        "tags": ["chair", "furniture", "brown"],
        "purchased_at": 1579190471,
        "placement": {"room_id": 3, "name": "Meeting Room"}
      },
      {
        "inventory_id": 9380,
        "name": "Big Desk",
        "type": "furniture",
        "tags": ["desk", "furniture", "brown"],
        "purchased_at": 1579190642,
        "placement": {"room_id": 3, "name": "Meeting Room"}
      },
      {
        "inventory_id": 2932,
        "name": "LG Monitor 50 inch",
        "type": "electronic",
        "tags": ["monitor"],
        "purchased_at": 1579017842,
        "placement": {"room_id": 3, "name": "Lavender"}
      },
      {
        "inventory_id": 232,
        "name": "Sharp Pendingin Ruangan 2PK",
        "type": "electronic",
        "tags": ["ac"],
        "purchased_at": 1578931442,
        "placement": {"room_id": 5, "name": "Dhanapala"}
      },
      {
        "inventory_id": 9382,
        "name": "Alat Makan",
        "type": "tableware",
        "tags": ["spoon", "fork", "tableware"],
        "purchased_at": 1578672242,
        "placement": {"room_id": 10, "name": "Rajawali"}
      }
    ]
  };

  // Future<MoreInfo> _fetchMoreInfo()async{
  //   await Future.delayed(Duration(seconds: 3));
  //   Response response = Response(jsonDecode(_simpleResponse).200);
  //   return companyInfoFromJson(response.body);
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("JSON MANIPULATION"),
      ),
    );
  }
}
