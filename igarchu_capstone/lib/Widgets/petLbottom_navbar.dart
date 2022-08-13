import 'package:flutter/material.dart';

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
    // const MainScreen(),
    // const ChecklistScreen(),
    // const BudgetScreen(),
    // const VendorlistScreen(),
    // const GuestlistScreen(),
    // const SettingsScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: IndexedStack(
      //   index: currentIndex,
      //   children: (screens),
      // ),
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
