import 'package:flutter/material.dart';
import 'package:igarchu_capstone/Screens/Chat/chat_screen.dart';
import 'package:igarchu_capstone/Screens/Donation/donation_screen.dart';
import 'package:igarchu_capstone/Screens/Explore/explore_screen.dart';
import 'package:igarchu_capstone/Screens/Health%20Tracker/ht_screen.dart';
import 'package:igarchu_capstone/Screens/Profile/profile_screen.dart';

import '../constants.dart';
import '../widgets/petLbottom_navbar.dart';
import 'login_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
int currentIndex = 0;
  final screens = [
    HealthTrackerScreen(),
    DonationScreen(),
    ExploreScreen(),
    ChatScreen(),
    ProfileScreen()
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title: const Text('Health'),
        backgroundColor: kPrimaryColor,
        elevation: 0.0,
      ),
        body: IndexedStack(
        index: currentIndex,
        children: screens,),
      // body: Center(
      //   child: ElevatedButton(
      //     child: Text('Logout'),
      //     onPressed: () {
      //       Navigator.push(context,
      //           MaterialPageRoute(builder: (context) => LoginScreen()));
      //     },
      //   ),
      // ),
      bottomNavigationBar: const buildBottomNavBar(),
    );
  }
}
