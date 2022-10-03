import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:igarchu_capstone/Animal%20Org/Screens/Post%20Adoption/post_adoption.dart';
import 'package:igarchu_capstone/firebase_options.dart';
import 'package:igarchu_capstone/services/firebase_auth_services.dart';
import 'package:provider/provider.dart';
import 'package:igarchu_capstone/Screens/splash_screen.dart';
import 'package:igarchu_capstone/Screens/Pawtest/ptest_screens.dart';

import 'Screens/Health Tracker/ht_screen.dart';
import 'Screens/login_screen.dart';
import 'Screens/register_screen.dart';
import 'constants.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<FireAuthService>(create: (_) => FireAuthService()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
            primaryColor: kPrimaryLightColor,
            fontFamily: 'Poppins',
            textTheme: const TextTheme(
              headline1: TextStyle(fontFamily: 'Poppins'),
              headline2:
                  TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.bold),
            )),
        home: const SplashScreen(),
        // home: HealthTrackerScreen(),
        // home: PostAdoptScreen(),
      ),
    );
  }
}
