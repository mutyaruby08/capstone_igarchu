// ignore: camel_case_types
import 'package:flutter/material.dart';
import 'package:igarchu_capstone/Animal%20Org/Screens/1Feature/1feature_screen.dart';
import 'package:igarchu_capstone/Animal%20Org/Screens/Chat%20Org/org_chat_screen.dart';
import 'package:igarchu_capstone/Animal%20Org/Screens/Org%20Profile/org_profile_screen.dart';
import 'package:igarchu_capstone/Animal%20Org/Screens/Post%20Adoption/post_adoption.dart';
import 'package:igarchu_capstone/Animal%20Org/Screens/Post%20Donation/post_donate_screen.dart';

import '../../constants.dart';

class OrgBottomNavBar extends StatefulWidget {
  const OrgBottomNavBar({Key? key}) : super(key: key);

  @override
  State<OrgBottomNavBar> createState() => _OrgBottomNavBarState();
}

// ignore: camel_case_types
class _OrgBottomNavBarState extends State<OrgBottomNavBar> {
  int currentIndex = 2;
  final screens = [
    FeatureScreen(),
    PostDonateScreen(),
    PostAdoptScreen(),
    ChatOrgScreen(),
    OrgProfileScreen(),
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
