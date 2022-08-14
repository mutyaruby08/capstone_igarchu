import 'package:flutter/material.dart';
import 'package:igarchu_capstone/Screens/Chat/chat_screen.dart';
import 'package:igarchu_capstone/Screens/Donation/donation_screen.dart';
import 'package:igarchu_capstone/Screens/Explore/explore_screen.dart';
import 'package:igarchu_capstone/Screens/Health%20Tracker/ht_screen.dart';
import 'package:igarchu_capstone/Screens/Profile/profile_screen.dart';

import '../constants.dart';

// ignore: camel_case_types
class buildBottomNavBar extends StatefulWidget {
  const buildBottomNavBar({Key? key}) : super(key: key);

  @override
  State<buildBottomNavBar> createState() => _buildBottomNavBarState();
}

// ignore: camel_case_types
class _buildBottomNavBarState extends State<buildBottomNavBar> {
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
      body: IndexedStack(
        index: currentIndex,
        children: (screens),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.grey,
        selectedItemColor: kbutton1,
        backgroundColor: Colors.white,
        iconSize: 30,
        onTap: (index) => setState(() {
          currentIndex = index;
        }),
        items: const [
          BottomNavigationBarItem(
            label: 'Health',
            icon: Icon(
              Icons.monitor_heart_outlined,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Donate',
            icon: Icon(
              Icons.volunteer_activism_outlined,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Explore',
            icon: Icon(Icons.search_outlined),
          ),
          BottomNavigationBarItem(
            label: 'Chat',
            icon: Icon(
              Icons.chat_outlined,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Profile',
            icon: Icon(
              Icons.person_outline_outlined,
            ),
          ),
          // BottomNavigationBarItem(
          //   label: 'Settings',
          //   icon: Icon(Icons.settings),
          // ),
        ],
      ),
    );
  }
}
