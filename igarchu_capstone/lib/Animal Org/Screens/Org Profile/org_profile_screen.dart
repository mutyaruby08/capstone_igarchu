// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:igarchu_capstone/constants.dart';

class OrgProfileScreen extends StatefulWidget {
  OrgProfileScreen({Key? key}) : super(key: key);

  @override
  State<OrgProfileScreen> createState() => _OrgProfileScreenState();
}

class _OrgProfileScreenState extends State<OrgProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Profile'),
          backgroundColor: kbutton2,
        ),
        body: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Expanded(
                  child: ListView.builder(
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return Text('profile');
                      }
                      
                      ),
                )
              ],
            )));

  }
}
