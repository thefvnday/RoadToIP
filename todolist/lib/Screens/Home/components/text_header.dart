import 'package:flutter/material.dart';


class TextHeader extends StatelessWidget {
  final String TextName;
  final String TextNotif;
  
  const TextHeader({
    Key? key, required this.TextName,required this.TextNotif,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Text(
          TextName,
          style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Colors.black),
        ),
        SizedBox(
          height: 7,
        ),
        Text(
          TextNotif,
          style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.orange),
        ),
      ],
    );
  }
}
