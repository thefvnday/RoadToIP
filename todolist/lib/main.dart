import 'package:flutter/material.dart';
import 'package:todolist/Screens/Welcome/welcome_screens.dart';
import 'package:todolist/constants.dart';
import 'package:todolist/routes.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) => MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'toDoList',
      theme: ThemeData(
          primaryColor: PrimaryColor, 
          brightness: Brightness.light,
          accentColor: Colors.black54,

          scaffoldBackgroundColor: Colors.white),
      initialRoute: WelcomeScreen.routeName,
      routes: routes,
    );
}
