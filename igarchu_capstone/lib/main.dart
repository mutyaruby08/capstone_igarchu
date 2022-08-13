import 'package:flutter/material.dart';

import 'Screens/login_screen.dart';
import 'constants.dart';

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
       primaryColor: kPrimaryLightColor,
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

