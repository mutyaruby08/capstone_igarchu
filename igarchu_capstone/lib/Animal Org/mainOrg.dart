import 'package:flutter/material.dart';
import 'package:igarchu_capstone/Animal%20Org/Screens/1Feature/1feature_screen.dart';
import 'package:igarchu_capstone/Animal%20Org/Screens/Chat%20Org/org_chat_screen.dart';
import 'package:igarchu_capstone/Animal%20Org/Screens/Org%20Profile/org_profile_screen.dart';
import 'package:igarchu_capstone/Animal%20Org/Screens/Post%20Adoption/post_adoption.dart';
import 'package:igarchu_capstone/Animal%20Org/Screens/Post%20Donation/post_donate_screen.dart';

import '../constants.dart';
import 'Widgets/orgBottom_navbar.dart';

class AnimalOrgHomeScreen extends StatefulWidget {
  AnimalOrgHomeScreen({Key? key}) : super(key: key);

  @override
  State<AnimalOrgHomeScreen> createState() => _AnimalOrgHomeScreenState();
}

class _AnimalOrgHomeScreenState extends State<AnimalOrgHomeScreen> {
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
      appBar: AppBar(
        title: const Text('Health'),
        backgroundColor: kPrimaryColor,
        elevation: 0.0,
      ),
      body: IndexedStack(
        index: currentIndex,
        children: screens,
      ),
      // body: Center(
      //   child: ElevatedButton(
      //     child: Text('Logout'),
      //     onPressed: () {
      //       Navigator.push(context,
      //           MaterialPageRoute(builder: (context) => LoginScreen()));
      //     },
      //   ),
      // ),
      bottomNavigationBar: const OrgBottomNavBar(),
    );
  }
}
