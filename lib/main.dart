import 'package:chat_app/screens/CreateUser/create_user.dart';
import 'package:chat_app/screens/HomePage/home_page.dart';
import 'package:chat_app/widgets/gradient_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // colors
        primaryColor: Colors.red[600],
        accentColor: Colors.red[200],

        // button
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
          primary: Colors.red[400],
          onPrimary: Colors.white,
        )),

        // text input
        inputDecorationTheme: InputDecorationTheme(
            fillColor: Colors.white,
            filled: true,
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.redAccent, width: 1.0),
              borderRadius: BorderRadius.circular(25.0),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25),
            ),
            hintStyle: TextStyle(
                color: Colors.black54,
                fontSize: 14,
                fontWeight: FontWeight.w500)),

        // icon
        iconTheme: IconThemeData(color: Theme.of(context).primaryColor),

        // text
        textTheme: TextTheme(
          headline1: TextStyle(
              fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black),
          headline2: TextStyle(color: Colors.black87, fontSize: 14),
          button: TextStyle(
              color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ),
      routes: {
        // '/': (context) => HomePage()
        CreateUserScreen.routeName: (context) => CreateUserScreen(),
      },
      home: HomePage(),
    );
  }
}
