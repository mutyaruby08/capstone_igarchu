// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:igarchu_capstone/constants.dart';

class FeatureScreen extends StatefulWidget {
  FeatureScreen({Key? key}) : super(key: key);

  @override
  State<FeatureScreen> createState() => _FeatureScreenState();
}

class _FeatureScreenState extends State<FeatureScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('1Feature'),
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
                          return Text('unsan ni diri uy');
                        }))
              ],
            )));
  }
}
