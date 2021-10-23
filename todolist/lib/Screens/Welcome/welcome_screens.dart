import 'package:flutter/material.dart';
import 'package:todolist/Screens/Welcome/components/body.dart';

class WelcomeScreen extends StatelessWidget {
   static String routeName="/welcome";
  const WelcomeScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}