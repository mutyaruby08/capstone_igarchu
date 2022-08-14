import 'package:flutter/material.dart';

import '../../constants.dart';
import '../login_screen.dart';

class ProfileScreen extends StatefulWidget {
  ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Profile'),
        backgroundColor: kPrimaryColor,
        elevation: 0.0,
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Logout'),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const LoginScreen()));
          },
        ),
      ),
    );
  }
}
