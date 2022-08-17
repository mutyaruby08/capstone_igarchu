// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:igarchu_capstone/constants.dart';

class ChatOrgScreen extends StatefulWidget {
  ChatOrgScreen({Key? key}) : super(key: key);

  @override
  State<ChatOrgScreen> createState() => _ChatOrgScreenState();
}

class _ChatOrgScreenState extends State<ChatOrgScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Chat'),
          backgroundColor: kbutton2,
        ),
        body: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Expanded(
                  child: ListView.builder(
                      itemCount: 10,
                      // itemCount: Adoptee.pets.length,
                      itemBuilder: (context, index) {
                        return Text('chat now');
                      }
                  
                      ),
                )
              ],
            )));

  }
}
