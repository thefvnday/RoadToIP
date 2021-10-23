import 'package:flutter/material.dart';
import 'package:todolist/Screens/Welcome/welcome_screens.dart';
import 'package:todolist/constants.dart';
import 'package:todolist/routes.dart';
// import '../Screens/Welcome/welcome_screen.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'toDoList',
        theme: ThemeData(
            primaryColor: PrimaryColor, scaffoldBackgroundColor: Colors.white),
        // home: Scaffold(
        //   body: Container(
        //     child: Center(
        //       child: Text(
        //         "Hallow"
        //       ),
        //     ),
        //   ),
        // ),
        initialRoute: WelcomeScreen.routeName,
        routes: routes,
    );
  }
}
