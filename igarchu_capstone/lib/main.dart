import 'package:flutter/material.dart';

import 'Screens/login_screen.dart';
import 'Screens/register_screen.dart';
import 'Screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: const Color.fromRGBO(254, 233, 214, 1),
        fontFamily: 'Poppins',
              textTheme: const TextTheme(
                headline1: TextStyle(fontFamily: 'Poppins'),
                headline2: TextStyle(
                    fontFamily: 'Poppins', fontWeight: FontWeight.bold),
              )
      ),
      home: const register_screen(),
    );
  }
}

