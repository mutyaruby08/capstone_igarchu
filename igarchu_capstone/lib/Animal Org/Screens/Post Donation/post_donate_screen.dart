// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:igarchu_capstone/constants.dart';

class PostDonateScreen extends StatefulWidget {
  PostDonateScreen({Key? key}) : super(key: key);

  @override
  State<PostDonateScreen> createState() => _PostDonateScreenState();
}

class _PostDonateScreenState extends State<PostDonateScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Post Donation'),
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
                        return Text('donate now');
                      }
                      // (context, index) {
                      //   return SizedBox(
                      //     height: 300,
                      //     child: PetCard(pets: Adoptee.pets[index]),
                      //   );
                      // },
                      ),
                )
              ],
            )));
  }
}
